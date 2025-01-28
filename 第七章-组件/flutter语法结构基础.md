Flutter语法结构基础（Dart语言）

以下是 Flutter 开发中常用的 Dart 语法结构与关键概念，包含代码示例与注释说明：

1. 主函数与入口点

Flutter 应用的入口是 main() 方法，runApp() 用于加载根组件。

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // 加载根组件
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // 应用的标题
      theme: ThemeData(
        primarySwatch: Colors.blue, // 设置主题颜色
      ),
      home: MyHomePage(), // 指定主页
    );
  }
}

2. Widget（组件）
	•	Flutter 中的所有 UI 都是由 Widget 构建的。
	•	有两种类型的 Widget：
	•	StatelessWidget（无状态组件）：状态不可变。
	•	StatefulWidget（有状态组件）：状态可变。

StatelessWidget

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget Demo'), // 应用栏标题
      ),
      body: Center(
        child: Text('Hello, Flutter!'), // 文本内容
      ),
    );
  }
}

StatefulWidget

class MyCounterPage extends StatefulWidget {
  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _counter = 0; // 定义状态变量

  void _incrementCounter() {
    setState(() {
      _counter++; // 更新状态变量
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pressed the button this many times:'),
            Text(
              '$_counter', // 动态显示状态变量
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 点击按钮时调用的方法
        tooltip: 'Increment',
        child: Icon(Icons.add), // 按钮图标
      ),
    );
  }
}

3. 布局与容器

Flutter 提供了丰富的布局组件，如 Row, Column, Container, Stack 等。

Container 容器

Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.blue, // 背景颜色
    borderRadius: BorderRadius.circular(10), // 圆角
  ),
  child: Center(
    child: Text('Container Example', style: TextStyle(color: Colors.white)),
  ),
);

Row 和 Column
	•	Row：水平排列子组件。
	•	Column：垂直排列子组件。

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, // 主轴对齐方式
  children: [
    Icon(Icons.home, size: 50, color: Colors.blue),
    Icon(Icons.star, size: 50, color: Colors.green),
    Icon(Icons.settings, size: 50, color: Colors.orange),
  ],
);

Column(
  mainAxisAlignment: MainAxisAlignment.center, // 主轴居中
  crossAxisAlignment: CrossAxisAlignment.start, // 副轴靠左对齐
  children: [
    Text('First Item'),
    Text('Second Item'),
    Text('Third Item'),
  ],
);

Stack 堆叠布局

Stack(
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.red, // 底部容器
    ),
    Positioned(
      top: 50,
      left: 50,
      child: Icon(Icons.star, size: 50, color: Colors.white), // 叠加的图标
    ),
  ],
);

4. 常用的交互组件

Flutter 提供了丰富的交互组件，如按钮、输入框、滑块等。

按钮

ElevatedButton(
  onPressed: () {
    print('Button Pressed!');
  },
  child: Text('Elevated Button'),
);

TextButton(
  onPressed: () {
    print('Text Button Pressed!');
  },
  child: Text('Text Button'),
);

IconButton(
  icon: Icon(Icons.thumb_up),
  onPressed: () {
    print('Icon Button Pressed!');
  },
);

输入框

TextField(
  decoration: InputDecoration(
    labelText: 'Enter your name', // 标签文本
    border: OutlineInputBorder(), // 边框
  ),
  onChanged: (value) {
    print('Input: $value');
  },
);

5. 状态管理

setState() 是最基本的状态管理方式，但对于复杂场景，推荐使用 Provider 或其他状态管理框架。

基本状态更新

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Count: $count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

6. 路由与导航

Flutter 支持页面导航，使用 Navigator。

基本路由

Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()), // 跳转到 SecondPage
);

返回上一级页面

Navigator.pop(context); // 返回上一页

7. 异步与 Future

Dart 支持异步编程，async 和 await 用于处理耗时操作。

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // 模拟网络请求延迟
  return 'Data Loaded';
}

void loadData() async {
  String data = await fetchData();
  print(data);
}

以上代码涵盖了 Flutter 开发的核心语法基础。如果有更具体的内容需要深入了解，请告诉我！