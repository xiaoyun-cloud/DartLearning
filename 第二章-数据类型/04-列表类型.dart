//什么是list?
//在Dart中，List是一种可变大小的数组。它可以包含任何类型的对象，包括null值。
//list的声明方式有两种：
//1.字面量方式
//list = ['apple', 'banana', 'orange'];
//这种方式不需要指定类型，Dart会自动推断出list的类型。
//List list =<int>[];//这种方式需要指定类型，否则会报错。
//2.构造函数方式
//3.扩展运算符方式

//以下是实例代码：
void main() {
  // 字面量方式,声明list
  List l1 = [
    'apple',
    'banana',
    'orange',
    '1',
    '2',
    '3'
  ]; //这种方式不需要指定类型，Dart会自动推断出list的类型。
  List l2 = <int>[1, 2, 3]; //限定元素类型的声明方式,这种方式需要指定类型，否则会报错。
  print(l1);
  print(l2);
  // 构造函数的声明方式
  var l3 = List.filled(5, 0); //创建一个包含5个元素的list，每个元素的值都是0
  var lempy = List.empty(
      growable:
          true); //创建一个空的list,但是不能添加元素,因为函数Growable是false,这是默认值， 该列表是长度为零的固定长度列表。 如果 [growable] 是true，该列表是可增长的
  lempy.add(1); //因为把growable设置为true，所以可以添加元素
  print(l3);
  print(lempy);
  // 不能给一个固定长度的list添加元素

//以填充方式创建list
  var l4 = new List.filled(8, 3); //创建一个包含8个元素的list，每个元素的值都是3
  print(l4);
  //扩展运算符方式
  var l5 = [1, 2, ...l4]; //...为扩展运算符，可以将l4中的元素添加到l5中
  print(l5);
  var l6;
  var l7 = [7, ...?l6]; //加上?是为了防止l6为null时，报错
  print(l7);
  //返回列表的长度
  print(l5.length);
  //返回列表的第一个元素
  print(l5.first);
  //返回列表的最后一个元素
  print(l5.last);
  //列表的反转
  print('${l5.reversed.toList()} 反转'); //将列表反转，然后转换为List类型
  //在这里，我使用了字符串插值来将 l5.reversed.toList() 的结果嵌入到字符串中，并在前面加上了文本 " 反转"。同时，整个表达式被正确地放在了 print() 函数的参数中。

  //列表的排序
  var l8 = [3, 1, 2];
  l8.sort(); //默认升序排列
  print('$l8 升序排列'); //$符号用于字符串拼接,使l8可以和字符串拼接在一起
  l8.sort((a, b) => b - a); //降序排列
  print(l8);

  //添加元素
  l8.addAll([4, 5]); //在列表的末尾添加一个或多个元素
  print('$l8 添加元素4,5');

  //移除元素
  l8.remove(4); //移除列表中的第一个匹配元素
  print('$l8 移除元素6');

  //根据下标移除元素
  l8.removeAt(0); //移除列表中指定下标的元素
  print('$l8 根据下标移除下标为0的元素');

  //在指定位置插入元素
  l8.insert(0, 6); //在列表的指定位置插入一个元素,这里是在下标为0的位置插入元素6
  print('$l8 在下标为0的位置插入元素6');
  //清空列表
  l8.clear(); //清空列表
  print('$l8 清空列表');
  print(l8.isEmpty); //判断列表是否为空，返回true或false

  //采用join合并元素
  var l9 = ['a', 'b', 'c'];
  print('${l9.join('-')}合并元素'); //将列表中的元素用逗号和空格连接起来，返回一个字符串
}
