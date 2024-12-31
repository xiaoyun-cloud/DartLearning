
main(){
  print ('hello ward');//记得要加分号作为每一句的结束
}
//main 作为引入函数,所有的需要执行的代码都要放到入口处
// 选取行后，采用CTRL+/ 快速注释

//文件名称最好不含有中文，空格
//没有返回值的入口方法如下,表示main方法没有返回值

Function setData:void(){
}
// ---------------
//dart中定义变量可以通过var关键字可以通过类型来申明变量
// 也可不定义类型，让其自动推断，dart有类型校验
// 也可以采用String str = 'this is var'
// dart中定义变量可以通过var关键字可以通过类型来申明变量
  main(){
  var str='hello';
  var num=1234;
  String str='hi';
  print (str);
  int mynum=1234;
}
//----------------------
// Dart的命名规则：
// 1、变量名称必须由数字、字母、下划线和美元符($)组成。
// 2.注意：标识符开头不能是数字
// 3.标识符不能是保留字和关键字。
// 4.变量的名字是区分大小写的!   如：age和Age是不同的变量。在实际的运用中,也建议,不要用一个
// 5、标识符(变量名称)一定要见名思意：变量名称建议用名词，方法名称建议用动词
//   ###变量是什么就命名什么！
//   变量可以被下方新的同名变量覆盖
// eg:
// var 1str='123';
// ----
// 常量 不可改变
  const PI=3.14159;
final //常量
  final PI=3.14159
  
  final a =new DateTime.now();
  print(a);


// Dart 是一种现代化、面向对象的编程语言，广泛用于构建移动、桌面、服务器和 Web 应用程序（尤其是 Flutter 框架）。
// 下面是 Dart 的基础语法和关键特性：

// 1. 基础结构

// Dart 程序的入口是 main 函数：

void main() {
  print('Hello, Dart!');
}

	// •	main() 是程序的入口。
	// •	使用 print() 输出内容到控制台。

// 2. 变量和数据类型

// 变量声明

void main() {
  var name = 'Dart'; // 自动推断为 String 类型
  int age = 10; // 整数类型
  double height = 1.75; // 浮点数类型
  bool isLearning = true; // 布尔值
  String greeting = 'Hello'; // 字符串
  dynamic anything = 123; // 动态类型，可以赋值任意类型
}

	// •	var：自动推断类型。
	// •	dynamic：运行时确定类型。

// 常量

// const pi = 3.14; // 编译时常量
// final now = DateTime.now(); // 运行时常量

// 	•	const：值在编译时确定。
// 	•	final：值在运行时确定，一旦赋值就不可更改。

// 3. 控制流语句

// 条件语句

void main() {
  int score = 85;
  if (score >= 90) {
    print('A');
  } else if (score >= 80) {
    print('B');
  } else {
    print('C');
  }
}

// 循环

void main() {
  for (var i = 0; i < 5; i++) {
    print('Count: $i');
  }

  var list = [1, 2, 3];
  for (var item in list) {
    print(item);
  }

  int count = 0;
  while (count < 3) {
    print('While loop: $count');
    count++;
  }
}

// 4. 函数

// 定义和调用

void main() {
  greet('Dart');
  print(add(3, 5));
}

void greet(String name) {
  print('Hello, $name!');
}

int add(int a, int b) {
  return a + b;
}

// 可选参数

void main() {
  printUserInfo('Alice', age: 25);
}

void printUserInfo(String name, {int? age, String? city}) {
  print('Name: $name, Age: $age, City: $city');
}

// 	•	使用 {} 定义命名可选参数。
// 	•	使用 ? 表示可空类型。

// 箭头函数

int square(int x) => x * x;

// 5. 集合

// 列表（List）

void main() {
  var numbers = [1, 2, 3];
  numbers.add(4);
  print(numbers); // [1, 2, 3, 4]
}

// 集合（Set）

void main() {
  var set = {1, 2, 3};
  set.add(2); // 不会重复
  print(set); // {1, 2, 3}
}

// 映射（Map）

void main() {
  var map = {'name': 'Dart', 'age': 10};
  map['city'] = 'San Francisco';
  print(map); // {name: Dart, age: 10, city: San Francisco}
}

// 6. 类与对象

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print('Hi, I am $name, $age years old.');
  }
}

void main() {
  var person = Person('Alice', 30);
  person.introduce();
}

// 7. 异步编程

// Dart 支持异步编程，使用 Future 和 async/await：

void main() async {
  print('Fetching data...');
  var data = await fetchData();
  print('Data: $data');
}

Future<String> fetchData() async {
  return Future.delayed(Duration(seconds: 2), () => 'Hello, Dart!');
}

// 8. 异常处理

void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Finally block');
  }
}

// 9. 运算符
// 	•	算术运算符：+ - * / ~/ %
// 	•	比较运算符：== != > < >= <=
// 	•	逻辑运算符：&& || !
// 	•	条件运算符：condition ? expr1 : expr2
// 	•	空值合并运算符：?? 和 ??=

void main() {
  var name;
  print(name ?? 'Default'); // 输出: Default

  name ??= 'Assigned';
  print(name); // 输出: Assigned
}

// 10. 空安全

// Dart 支持空安全特性，帮助开发者避免空引用错误。
// 	•	可空类型使用 ? 标记：

int? age;
print(age); // 输出: null


	// •	非空断言使用 !：

String? name;
print(name!); // 若 name 为 null 会抛出异常


  
