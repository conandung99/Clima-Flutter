void main() {
  performJob();
}

void performJob() async {
  task1();
  String rs2 = await task2();
  task3(rs2);
}

void task1() {
  // String result = 'task1 data';
  print('task1 completed!');
}

Future task2() async {
  String result;
  Duration threeSec = Duration(seconds: 3);
  // sleep(threeSec); // synchronous

  await Future.delayed(threeSec, () {
    result = 'task2 data';
    print('task2 completed!');
  });

  return result;
}

void task3(String result2) {
  // String result = 'task3 data';
  print('task3 completed with $result2!');
}
