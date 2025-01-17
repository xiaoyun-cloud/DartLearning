//实现一个类多个接口
// 一个类可以实现多个接口，使用逗号分隔即可
//实例代码
//定义一个接口A
abstract class A {
  String a;
  printA();
}

//定义一个接口B
abstract class B {
  String b;
  printB();
}

//定义一个类C实现A和B两个接口
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

void main() {
  C c = new C();
  c.printA();
  c.printB();
}
// 代码中定义了两个接口A和B，类C实现了A和B两个接口，最后实例化类C并调用printA和printB方法。
