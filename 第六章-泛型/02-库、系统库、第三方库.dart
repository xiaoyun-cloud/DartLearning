// 自定义库（Custom Library）
// 自定义库是由开发者自己编写的库，通常用于封装特定功能或模块。
// 创建自定义库可以帮助你更好地组织代码，提高代码的可读性和复用性。

// 定义一个自定义库
library my_custom_library;

// 导出库中的内容供其他文件使用
export 'file1.dart';
export 'file2.dart';

// 导入自定义库
import 'package:my_project/my_custom_library.dart';

// 使用自定义库中的功能
void useCustomLibrary() {
  // 调用自定义库中的函数或类
}

// 系统库（System Library）
// 系统库是 Dart 提供的标准库，包含了丰富的内置功能，可以直接使用。
// 系统库涵盖了从基本数据类型到高级功能的各种工具。

// 常用的系统库包括：
import 'dart:core';      // 核心库，提供基础数据类型和常用工具类
import 'dart:math';      // 数学运算库，提供数学常量和函数
import 'dart:convert';   // 编解码库，支持 JSON、UTF-8 等编码转换
import 'dart:io';        // 文件 I/O 库，支持文件和网络操作
import 'dart:async';     // 异步编程库，支持 Future 和 Stream
import 'dart:collection'; // 集合库，提供额外的集合类
import 'dart:typed_data'; // 类型化数据库，支持二进制数据处理

// 示例：使用 dart:math 库生成随机数
import 'dart:math';

void generateRandomNumber() {
  Random random = Random();
  int randomNumber = random.nextInt(100);
  print('Random number: $randomNumber');
}

// 第三方库（Third-party Library）
// 第三方库是由社区或其他开发者提供的库，可以通过 pub.dev 获取并集成到项目中。
// 第三方库可以扩展 Dart 的功能，提供更多的工具和框架。

// 添加第三方库到 pubspec.yaml 文件
dependencies:
  http: ^0.13.3  // HTTP 请求库
  flutter: ^2.0.6  // Flutter 框架

// 导入第三方库
import 'package:http/http.dart' as http;

// 使用第三方库发送 HTTP 请求
Future<void> fetchUserData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));
  if (response.statusCode == 200) {
    print('User data: ${response.body}');
  } else {
    print('Failed to load user data');
  }
}

void main() {
  // 使用自定义库
  useCustomLibrary();

  // 使用系统库
  generateRandomNumber();

  // 使用第三方库
  fetchUserData();
}
