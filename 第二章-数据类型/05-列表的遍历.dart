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
  bool isodd(n) =>
      n % 2 == 1; //定义一个判断奇数的函数.代码逻辑:定义一个isodd函数,判断n除以2的余数是否为1,如果是奇数
  var oddNums = nums.where((element) => isodd(
      element)); //代码逻辑:调用isodd函数,判断nums数组中的元素是否为奇数,如果是奇数,则返回该元素,添加到oddNums数组中
  print(oddNums.toList()); //输出oddNums并转换为list,方便查看
  print('过滤数组');

  // 使用any方法判断数组中是否有符合条件的元素
  //检测数组中是否有偶数
  print(nums
      .any(isodd)); //logic:调用isodd函数,判断nums数组中的元素是否为奇数,如果是奇数,则返回true,否则返回false
  bool hasEven = nums.any((element) =>
      element % 2 == 0); //logic:判断nums数组中的元素是否为偶数,如果是偶数,则返回true,否则返回false
  print(hasEven
      ? '有偶数'
      : '无偶数'); //逻辑:如果hasEven为true,则输出'有偶数',否则输出'无偶数',?为三元运算符,:为三元运算符的另一部分,表示如果前面的条件不满足,则执行后面的代码,类似于if-else

  //使用every方法判断数组中的所有元素是否都满足条件
  bool allOdd = nums.every(
      isodd); //logic:调用isodd函数,判断nums数组中的元素是否都为奇数,如果是奇数,则返回true,否则返回false
  print(allOdd ? '全是奇数' : '不全都是奇数'); //逻辑:如果allOdd为true,则输出'全是奇数',否则输出'不全都是奇数'
  //由此可以看出,every方法比any方法更严格

  //拓展,将2个数组合并为一个二维数组
  var pairs = [
    [1, 2, 3],
    [4, 5, 6]
  ];
  var combined = pairs
      .expand((element) => element)
      .toList(); //语句结构解释:定义一个combined变量,调用pairs数组的expand方法(即扩展),将每个元素展开为一个新的列表,然后将所有新列表合并成一个一维列表
  print(combined);

  //折叠方法,对列表中的每一个元素做一个累加操作
  int result = nums.fold(2,
      (p, element) => p * element); //2为初始值,p为累加器,2*element为累加器,即每次将p的值乘以当前元素的值
  print(
      result); //逻辑:定义一个result变量,调用nums数组的fold方法,将nums数组中的元素从左到右依次乘以p的值,并将结果赋值给p
}
//end
