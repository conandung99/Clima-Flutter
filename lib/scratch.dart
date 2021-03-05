import 'dart:io';

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

void task2() {
  String result = 'task2 data';
  Duration threeSec = Duration(seconds: 3);
  sleep(threeSec);
  print('task2 completed!');
}

void task3() {
  String result = 'task3 data';
  print('task3 completed!');
}
