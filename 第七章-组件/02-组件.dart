// 导入Flutter的material库，包含常用的UI组件
import 'package:flutter/material.dart';

// 定义一个自定义按钮组件
class CustomButton extends StatelessWidget {
  // 定义按钮的标签文本
  final String label;
  // 定义按钮点击事件的回调函数
  final VoidCallback onPressed;

  // 构造函数，初始化标签文本和点击事件回调函数
  CustomButton({required this.label, required this.onPressed});

  // 构建组件的方法
  @override
  Widget build(BuildContext context) {
    // 返回一个ElevatedButton组件
    return ElevatedButton(
      // 设置按钮的点击事件回调函数
      onPressed: onPressed,
      // 设置按钮的子组件，即显示的文本
      child: Text(label),
      // 设置按钮的样式
      style: ElevatedButton.styleFrom(
        // 设置按钮的背景颜色
        primary: Colors.blue,
        // 设置按钮文字的颜色
        onPrimary: Colors.white,
        // 设置按钮的内边距
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // 设置按钮的形状，这里使用圆角矩形
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

// 应用的入口函数
void main() {
  // 运行MyApp组件
  runApp(MyApp());
}

// 定义应用的根组件
class MyApp extends StatelessWidget {
  // 构建组件的方法
  @override
  Widget build(BuildContext context) {
    // 返回一个MaterialApp组件，包含应用的主题和主页
    return MaterialApp(
      // 设置应用的主题
      theme: ThemeData(
        // 设置主题的主要颜色
        primarySwatch: Colors.blue,
        // 设置文本的主题样式
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      // 设置应用的主页
      home: Scaffold(
        // 设置应用的AppBar
        appBar: AppBar(
          // 设置AppBar的标题
          title: Text('Custom Button Example'),
        ),
        // 设置应用的主体内容
        body: Center(
          // 在主体内容中居中显示CustomButton组件
          child: CustomButton(
            // 设置按钮的标签文本
            label: 'Click Me',
            // 设置按钮的点击事件回调函数
            onPressed: () {
              // 打印按钮点击事件
              print('Button clicked!');
            },
          ),
        ),
      ),
    );
  }
}
//end

/*
解释
导入库：

import 'package:flutter/material.dart';：导入Flutter的material库，包含常用的UI组件。
自定义按钮组件：

class CustomButton extends StatelessWidget：定义一个名为CustomButton的无状态组件。
final String label; 和 final VoidCallback onPressed;：定义按钮的标签文本和点击事件回调函数。
CustomButton({required this.label, required this.onPressed});：构造函数，初始化标签文本和点击事件回调函数。
@override Widget build(BuildContext context)：构建组件的方法。
return ElevatedButton(...)：返回一个ElevatedButton组件，设置按钮的点击事件、显示文本和样式。
应用的入口函数：

void main() { runApp(MyApp()); }：应用的入口函数，运行MyApp组件。
应用的根组件：

class MyApp extends StatelessWidget：定义一个名为MyApp的无状态组件。
@override Widget build(BuildContext context)：构建组件的方法。
return MaterialApp(...)：返回一个MaterialApp组件，包含应用的主题和主页。
theme: ThemeData(...)：设置应用的主题，包括主要颜色和文本样式。
home: Scaffold(...)：设置应用的主页。
appBar: AppBar(...)：设置应用的AppBar，包括标题。
body: Center(...)：设置应用的主体内容，居中显示CustomButton组件。
child: CustomButton(...)：在主体内容中居中显示CustomButton组件，设置按钮的标签文本和点击事件回调函数。

*/
