void main() {
  Map dictionary = {'apple': '사과', 'banana': '바나나', 'watermelon': '수박'};

  print(dictionary);
  print(dictionary['apple']); // '사과'
  print(dictionary['banana']); // '바나나'

  Map dictionary2 = {};
  dictionary2.addAll({'apple': '사과', 'banana': '바나나', 'watermelon': '수박'});

  // List list = new List();

  Map dictionary3 = new Map();

  // Map dictionary4 = new Map.from({
  //   {'apple': '사과', 'banana': '바나나'}
  // });

  Map<String, String> dictionary4 = Map.from({
    'apple': '사과',
    'banana': '바나나',
  });

  print(dictionary4);

  print(dictionary4.keys.toList());
  print(dictionary4.values.toList());

  Map<String, int> ages = {
    'John': 30,
    'Jane': 25,
    'Doe': 35,
  };

  // 조건: 나이가 30 이상인 경우에만 출력
  ages.forEach((name, age) {
    if (age >= 30) {
      print('$name\'s age is $age');
    }
  });
}
