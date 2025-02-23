/*
一个类实现多个接口
*/

abstract class A {
  String a;
  printA();
}

abstract class B {
  String b;
  printB();
}

class C implements A, B {
  @override
  String a;

  @override
  String b;

  @override
  printA() {
    print('a');
  }

  @override
  printB() {
    print('b');
  }
}
