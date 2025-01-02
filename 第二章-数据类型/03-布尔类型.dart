// boolean类型(布尔类型)
//布尔类型只有两个值:true和false
//对变量进行判断时,要显示其真假值,就需要用到布尔类型
void main() {
  //声明布尔类型变量
  bool flag = true;
  print(flag);
  bool flag2 = false;
  print(flag2);
  //布尔类型变量可以作为条件判断
  var flag3;
  print("真");
  var n1 = 0 / 0;
  print(n1); //输出为NaN,是not a number缩写,表示不是一个数字
  print(n1.isNaN); //判断n1是否为非数字,是则输出true
  //以下是一些特殊的判断
  print(n1.isInfinite); //判断n1是否为无穷大,是则输出true
  print(n1.isNegative); //判断n1是否为负数,是则输出true
  print(n1.isFinite); //判断n1是否为有限数,是则输出true
  print(n1.isEven); //判断n1是否为偶数,是则输出true
  print(n1.isOdd); //判断n1是否为奇数,是则输出true
}
