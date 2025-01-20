//声明类
class person {
  String name = '张三';
  int age = 20; //通过class方法定义类的属性

//类的方法构造
  void getInfo() {
    print('我是${name},今年${age}岁');
  }
}

void main() {
  //实例化类,得到一个对象
  person p = person(); //访问类的属性
  print(p.name);
  p.getInfo(); //调用(访问)类的方法

  //dart中所有的内容都是对象
  Map m = new Map(); //实例化map对象,new关键字可以省略,为实例化对象过程
//在IDE中,类的属性为扳手图标,类的方法为立方体图标
  print(m.length);
  m.addAll({'name': '里斯', 'age': 99});
  print(m);
  print(m.length);
}
