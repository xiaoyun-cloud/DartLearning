//dart中的函数
//不同于JS,dart中声明函数可以直接声明,不需要function关键字
import 'dart:ffi';

void main() {
  //匿名函数
  var myPrint = (value) {
    print(value);
  };
  List fruits = ['apple', 'banana', 'orange'];
  fruits.forEach(myPrint); //表示遍历fruits,并将每个元素传递给myPrint,forEach方法接受一个匿名函数作为参数

  //箭头函数
  var myPrint2 = (value) => print(value);
  List fruits2 = [
    'apple',
    'banana',
    'orange'
  ]; //表示遍历fruits,并将每个元素传递给myPrint2,forEach方法接受一个箭头函数作为参数
  //什么是foreach?表示遍历fruits,并将每个元素传递给myPrint2,forEach方法接受一个箭头函数作为参数
  //箭头函数,即=>,表示返回值,不能写结束符号,即;

  //立即执行函数
  ((int n) {
    print('立即执行函数');
  })(17); //表示立即执行函数,传递参数17

  //函数作为参数
  void printInfo(String name, int age) {
    print('Name: $name, Age: $age');
  }
}

// 示例函数声明
/*
void printInfo() {
  print('Hello, World!');
}

void printInfo1(String name, int age) {
  print('Name: $name, Age: $age');
}

String printInfo2(String name, int age) {
  return 'Name: $name, Age: $age';
}

String printInfo3(String name, [int age = 18]) {
  return 'Name: $name, Age: $age';
}

String printInfo4(String name, [int age = 18, String? address]) {
  return 'Name: $name, Age: $age, Address: $address';
}

String printInfo5(String name, {int age = 18, String? address}) {
  return 'Name: $name, Age: $age, Address: $address';
}

String printInfo6(String name, int age) => 'Name: $name, Age: $age';
*/
