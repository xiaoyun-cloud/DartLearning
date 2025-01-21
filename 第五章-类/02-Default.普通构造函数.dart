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