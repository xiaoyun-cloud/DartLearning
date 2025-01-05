//set无法通过下标取值
void main() {
//字面量
  var nums = <int>{1, 2, 2, 3}; //重复的元素会被忽略
  print(nums);

  //构造函数
  var fruits = new Set(); //创建空的set,set是可变类型
  fruits.add("apple");
  fruits.add("banana");
  fruits.add('orange');
  print(fruits);
  print(fruits.toList());

  List myNums = [1, 2, 3, 3, 10];
  print(myNums.toSet()); //将list转换为set,能转化成功,但是重复的元素会过滤掉
  //set方法
  print(fruits.contains('apple'));

  //集合特有的操作(集合运算)
  var p1 = new Set();
  p1.addAll(['c1,c2,c3,c4']);
  var p2 = new Set();
  p2.addAll(['c2,c3,c4,c5,c6']); // 使用split方法将字符串转换为列表
  //交集
  print(p1);
  print(p2);
  print(p1
      .intersection(p2)); //返回p1和p2的交集,但是输出为空,原因是使用了‘’,系统将p1和p2转换为字符串,视为整体,所以返回空
  //并集
  print(p1.union(p2)); //返回p1和p2的并集
  //差集
  print(p1.difference(p2)); //返回p1和p2的差集

  //交集修复
  var p3 = new Set();
  p3.addAll(['c1', 'c2', 'c3', 'c4']);
  var p4 = new Set();
  p4.addAll(['c2', 'c3', 'c4', 'c5', 'c6']);
  print('---交集修复分割线---');
  print(p3.intersection(p4)); //返回p3和p4的交集
  print(p3.union(p4)); //返回p3和p4的并集
  print(p3.difference(p4)); //返回p3和p4的差集,逻辑:p3-p4,去除p4中p3中存在且没有的元素
  print(p4.difference(p3)); //返回p4和p3的差集,逻辑:p4-p3

  //返回第一个元素
  print(p3.first);
  //返回最后一个元素
  print(p3.last);
  //返回随机元素
  print(p3.elementAt(1));
  //返回元素个数(长度)
  print(p3.length);
  //返回是否为空
  print(p3.isEmpty);
  print(p3.isNotEmpty); //集合是否为空?
  print(p3.contains('c1')); //集合是否包含某个元素?
  print(p3.containsAll(['c1', 'c2'])); //集合是否包含多个元素?
  print(p3.any((element) => element == 'c1')); //集合是否包含某个元素?
  print(p3.every((element) => element == 'c1')); //集合中是否包含c1?是返回true,否则返回false
  print(p3.where((element) => element == 'c1')); //返回集合中包含c1的元素
  print(p3.map((element) =>
      element == 'c1')); //集合是否包含所有元素?代码逻辑:遍历p3,获取每个元素是否是c1,是返回true,否则返回false
  print('------循环遍历分割线-----');
  //集合不能循环遍历,因为集合是无序的,所以不能通过下标取值
  for (var item in p3) {
    print(item);
  } //代码逻辑:遍历p3,获取每个元素,打印出来
}

//end
