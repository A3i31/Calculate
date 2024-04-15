import 'dart:io';

void main() {
  calculate();
}

void calculate() {
  print("Введите первое число");
  int firstNum = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  print("Введите второе число");
  int secondNum = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  print("Введите действие");
  String action = stdin.readLineSync() ?? "";
  if (action == "+") {
    print(firstNum + secondNum);
  } else if (action == "-") {
    print(firstNum - secondNum);
  } else if (action == "*") {
    print(firstNum * secondNum);
  } else if (action == "/") {
    if (firstNum != 0 && secondNum != 0) {
      print(firstNum / secondNum);
    } else {
      print("Деление на 0!");
    }
  } else {
    print("Ошибка");
  }
}

