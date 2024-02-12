import 'package:flutter/material.dart';

class BasicWidget6 extends StatefulWidget {
  BasicWidget6({super.key});

  @override
  State<BasicWidget6> createState() => _BasicWidget6State();
}

class _BasicWidget6State extends State<BasicWidget6> {
  late DateTime _selectedTime;
  late String _pickedTime;

  @override
  void initState() {
    super.initState();
    _pickedTime = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 날짜 선택 버튼
              ElevatedButton(
                onPressed: () {
                  Future<DateTime?> selectedDate = showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2030),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                            data: ThemeData.dark(),
                            child: child ?? Container());
                      });
                },
                child: Text("Select Date"),
              ),
              SizedBox(
                height: 30,
              ),
              // 시간 선택 버튼
              ElevatedButton(
                onPressed: () {
                  Future<TimeOfDay?> selectedTime = showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  selectedTime.then((timeOfDay) {
                    setState(() {
                      _pickedTime = '${timeOfDay!.hour}:${timeOfDay.minute}';
                    });
                  });
                },
                child: Text('Time picker'),
              ),
              Text('$_pickedTime'),
            ],
          ),
        ),
      ),
    );
  }
}
