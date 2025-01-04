//set无法通过下标取值
void main() {
//字面量
  var nums = <int>{1, 2, 2, 3}; //重复的元素会被忽略
  print(nums);

  //构造函数
  var fruits = new Set();
  fruits.add("apple");
  fruits.add("banana");
  fruits.add('orange');
  print(fruits);
  print(fruits.toList());
  //set方法
  print(fruits.contains('apple'));
}
