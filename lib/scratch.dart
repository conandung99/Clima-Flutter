void main() {
  performJob();
}

void performJob() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task1 data';
  print('task1 completed!');
}

Future<String> task2() async {
  String result;
  Duration threeSec = Duration(seconds: 3);
  // sleep(threeSec); // synchronous

  Future.delayed(threeSec, () {
    result = 'task2 data';
    print('task2 completed!');
  });

  return result;
}

void task3() {
  String result = 'task3 data';
  print('task3 completed!');
}
