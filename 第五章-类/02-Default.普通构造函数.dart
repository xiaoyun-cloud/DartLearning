//首先, 定义一个类
class Person {
  String name = '张三';
  int age = 20; //通过class方法定义类的属性
//类的方法构造函数
  void getInfo() {
    print('我是${name},今年${age}岁');
  }
}
//什么是实例化?实例化指的是根据一个类创建一个对象的过程。类就像一个蓝图，而实例化就是用这个蓝图去建造一个具体的“房子”——也就是对象。
void main() {
  // 实例化 Person 类，创建一个名为 john 的对象
  var zhangsan = Person('张三2', 25);
print(zhangsan.getInfo());
  // print(zhangsan.name);  // 输出：John
  // print(zhangsan.age);   // 输出：25
}
修复后的代码
-----
class Person {
  String name;
  int age;

  // 带参数的构造函数
  Person(this.name, this.age);  // 使用构造函数参数来初始化属性

  // 类的方法
  void getInfo() {
    print('我是${name}, 今年${age}岁');
  }
}

void main() {
  // 实例化 Person 类，创建一个名为 zhangsan 的对象
  var zhangsan = Person('张三2', 25);

  // 调用 getInfo 方法
  zhangsan.getInfo();  // 输出：我是张三2, 今年25岁
}
-----
/*
class Point {
  int x; // 定义一个整数类型的成员变量 x
  int y; // 定义一个整数类型的成员变量 y

  // 普通构造函数，参数 x 和 y 用于初始化成员变量 x 和 y
  Point(this.x, this.y);
}

// 初始化列表示例
class PointWithInitList {
  int x;
  int y;

  // 带有初始化列表的构造函数
  PointWithInitList(int x, int y)
      : this.x = x,
        this.y = y {
    print('Point created');
  }
}

// 默认值示例
class PointWithDefaults {
  int x;
  int y;

  // 带有默认参数值的构造函数
  PointWithDefaults([this.x = 0, this.y = 0]);
}

// 命名构造函数示例
class PointWithNamedConstructor {
  int x;
  int y;

  // 普通构造函数
  PointWithNamedConstructor(this.x, this.y);

  // 命名构造函数
  PointWithNamedConstructor.origin() {
    x = 0;
    y = 0;
  }
}

// 常量构造函数示例
class ImmutablePoint {
  final int x;
  final int y;

  // 常量构造函数
  const ImmutablePoint(this.x, this.y);
}
void main() {
  Point p1 = Point(10, 20);
}