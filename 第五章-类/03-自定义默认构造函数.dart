// Dart 构造函数教程

// 1. 默认构造函数
// Dart 中的每个类都有一个默认构造函数，即使你没有显式地定义它。
// 默认构造函数没有参数，并且会创建一个类的新实例，将所有实例变量初始化为 null。
class Person {
  String name;
  int age;

  // 默认构造函数
  Person();

  void getInfo() {
    print('姓名: $name, 年龄: $age');
  }
}

void main() {
  Person person = Person();
  print(person.name); // 输出: null
  print(person.age);  // 输出: null
  person.getInfo();   // 输出: 姓名: null, 年龄: null
}

// 2. 带参数的构造函数
// 你可以定义一个带参数的构造函数来初始化实例变量。
class PersonWithParams {
  String name;
  int age;

  // 带参数的构造函数
  PersonWithParams(this.name, this.age);

  void getInfo() {
    print('姓名: $name, 年龄: $age');
  }
}

void main() {
  PersonWithParams person = PersonWithParams('张三', 20);
  print(person.name); // 输出: 张三
  print(person.age);  // 输出: 20
  person.getInfo();   // 输出: 姓名: 张三, 年龄: 20
}

// 3. 命名构造函数
// 你可以为一个类定义多个构造函数，但需要为它们指定不同的名称。
class PersonWithNamedConstructors {
  String name;
  int age;

  // 命名构造函数
  PersonWithNamedConstructors.withName(this.name);
  PersonWithNamedConstructors.withAge(this.age);

  void getInfo() {
    print('姓名: $name, 年龄: $age');
  }
}

void main() {
  PersonWithNamedConstructors person1 = PersonWithNamedConstructors.withName('张三');
  PersonWithNamedConstructors person2 = PersonWithNamedConstructors.withAge(20);
  print(person1.name); // 输出: 张三
  print(person1.age);  // 输出: null
  print(person2.name); // 输出: null
  print(person2.age);  // 输出: 20
  person1.getInfo();   // 输出: 姓名: 张三, 年龄: null
  person2.getInfo();   // 输出: 姓名: null, 年龄: 20
}
//end
