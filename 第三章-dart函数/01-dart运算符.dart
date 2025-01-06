//Dart 支持下表所示的运算符。该表从最高到最低显示了 Dart 的运算符关联性和运算符优先级，它们是 Dart 运算符关系的近似值。您可以将许多这样的运算符实现为类成员。
//参考网站https://dart.cn/language/operators/
import 'dart:math';

void main() {
  //算术运算符
  print(1 + 2); // 3
  print(1 - 2); // -1
  print(1 * 2); // 2
  print(1 / 2); // 0.5
  print(1 ~/ 2); // 0
  print(1 % 2); // 1

  //关系运算符
  print(1 == 2); // false
  print(1 != 2); // true

  //递增递减运算符
  int a = 1;
  print(a++); // 1,var + 1
  print(++a); // 3,var + 1
  print(a--); // 3,var = var - 1
  print(--a); // 1,var - 1
  //相等和关系运算符
  print(1 < 2); // 小于
  print(1 > 2); // 大于
  print(1 <= 2); // 小于等于
  print(1 >= 2); // 大于等于
  print(1 != 2); // 不等于
  print(1 == 2); // 等于
//避空运算符
  print(1 ?? 2); //表示1，如果1为空，则返回2
  //条件属性访问
  var a1 = 1;
  var b1 = 2;
  print(a1?.b1); //1?.b1表示a1?.b1，如果a1为空，则返回null，如果a1不为空，则返回a1.b1
  //a1 是一个整数类型 (int)，而你尝试通过 a1?.b1 访问 b1 属性。由于 int 类型没有 b1 属性，因此会报错。

  //加减乘除jian cheng chu
  print(1 + 2); // 3
  print(1 - 2); // -1
  print(1 * 2); // 2
  print(1 / 2); // 0.5
  print(1 ~/ 2); // 表示整数除法，结果为0
  print(1 % 2); // 1

  //类型判断运算符
  print(1 is int); // true
  print(1 is! int); // false
  print(1 is String); // false
  print(1 is! String); // true

  List list = [];
  if (list is List) {
    print(list.length);
  } else {
    print("不是list");
  }

  // 避空运算符
  String? name =
      null; // 表示 name 为空,通过在 String 后面添加 ?，声明 name 是一个可空的 String 类型，这样就可以将 null 赋值给 name
  print(name ?? "空"); // 表明 name 为空时，返回 "空"；如果 name 不为空，返回 name

  //赋值运算符
  int a = 1; //表示a为1
  a += 2; //表示a=a+2
  print(a);

  //条件属性运算符(保护可能为空的属性)
  var m = Map();
  print(m.length);
  var obj;
  print(obj?.length);
  //print(obj.length);报错Error: The value 'null' can't be assigned to a variable of type 'String' because 'String' is not nullable.表示obj为空，所以无法访问length属性
//级联运算符
  Set s = Set();
  s
    ..add(1)
    ..add(2)
    ..add(3); //表示添加了1，2，3, 其中..为运算符;不换行也可以
  s.remove(3);
  print(s);

  //上述代码等价于
  Set s1 = Set();
  s1.add(1);
  s1.add(2);
  s1.add(3);
  s1.remove(3);
  print(s1);
}
