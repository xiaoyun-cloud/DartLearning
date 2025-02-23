void main() {
//必填参数
  String userInfo(String name, [int age = 0]) {
    return "姓名:$name,年龄:$age";
  }

  String res = userInfo('李四', 18);
  print(res);

  //命名参数,名称在调用时需要与声明时的形参一致
  String res2 = userInfo('李四', 18);
  print(res2);

  //匿名函数
  var myPrint = (value) {
    print(value);
  };
  List fruits = ['apple', 'banana', 'orange'];
  //将匿名函数myPrint传递给函数forEach方法
  fruits.forEach(myPrint); //表示遍历fruits,并将每个元素传递给myPrint,forEach方法接受一个匿名函数作为参数
}
