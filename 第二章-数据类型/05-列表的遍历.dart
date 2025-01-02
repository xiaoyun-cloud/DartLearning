//列表的遍历
//部分代码来源于BILIBILI的whoitao视频教程
void main() {
  var nums = [1, 2, 3]; //先声明一个数组
  // for循环遍历
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  } //length属性可以获取数组的长度

  //for in 遍历
  for (var num in nums) {
    print(num);
  }

  //forEach遍历
  nums.forEach((element) {
    print(element);
  });

  var testNum = [];
  for (var i = 0; i < nums.length; i++) {
    testNum.add(nums[i] * 2);
  } //对原数组进行*2处理,输出一个新的数组
  print('$testNum,原数组*2处理');

  //map遍历可对数组处理后,输出一个新的数组,对上述代码用map重写:
  var testNum2 =
      nums.map((e) => e * 2).toList(); //e是element的简写,toList()是将Iterable转换成list
  print('$testNum2,原数组用map方法*2处理');
  //由此可以看出,map方法比for循环简洁

  //where方法,过滤数组,返回符合条件的数组元素,例如判断数字是否是偶数:
  var evenNums = nums.where((element) => element % 2 == 0).toList();
  print('$evenNums,原数组中偶数');//方法1

  bool isOdd(n)<= nums.where((element) => element % 2 != 0).toList();//此处待修改
}
