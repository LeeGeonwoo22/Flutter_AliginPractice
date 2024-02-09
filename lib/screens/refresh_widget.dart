import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Refresh extends StatefulWidget {
  const Refresh({super.key});

  @override
  State<Refresh> createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  late Future<List<Product>> productList;
  Dio dio = Dio();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productList = getProductData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<List<Product>> getProductData() async {
    late List<Product> products;
    try {
      var response = await dio.get("https://dummyjson.com/products");
      products = response.data['products']
          .map<Product>((json) => Product.fromJson(json))
          .toList();
    } catch (e) {
      print(e);
    }
    return products;
  }

  Future<void> refreshData() async {
    productList = getProductData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test widgets')),
      body: RefreshIndicator(
          onRefresh: () => refreshData(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: FutureBuilder<List<Product>>(
                future: productList,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    );
                  } else {
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          var data = snapshot.data[index];
                          return Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Text("${data.title}(${data.description})"),
                          );
                        });
                  }
                }),
          )),
    );
  }
}

class Product {
  final int id;
  final String title;
  final String description;

  Product({required this.id, required this.title, required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'], title: json['title'], description: json['description']);
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'description': description};
}
