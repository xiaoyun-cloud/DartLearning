import 'package:flutter/material.dart';

void main() {
  // 运行 Flutter 应用
  runApp(MyApp());
}

// 定义 MyApp 类，继承自 StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回 MaterialApp，这是 Flutter 应用的根组件
    return MaterialApp(
      // 设置应用的标题
      title: 'Container and Text Example',
      // 设置应用的主题
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 设置应用的主页
      home: Scaffold(
        // 设置应用的顶部导航栏
        appBar: AppBar(
          // 设置导航栏的标题
          title: Text('Container and Text Example'),
        ),
        // 设置应用的主体内容区域
        body: Center(
          // 使用 Container 组件包裹 Text 组件
          child: Container(
            // 设置 Container 的宽度
            width: 200,
            // 设置 Container 的高度
            height: 100,
            // 设置 Container 的背景颜色
            color: Colors.blue,
            // 设置 Container 的外边距
            margin: EdgeInsets.all(20),
            // 设置 Container 的内边距
            padding: EdgeInsets.all(10),
            // 设置 Container 的装饰，如边框
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            // 使用 Text 组件显示文本
            child: Text(
              'Hello, Flutter!',
              // 设置文本样式
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              // 设置文本对齐方式
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
