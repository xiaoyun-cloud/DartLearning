import 'dart:ffi';

void main() {
  // 数据类型String,单双引号都可以,三个引号可以包含换行符
  // 需要阅读常见的API文档
  // 声明字符串
  // 保存后运行才可以看到输出结果
  var str1 = 'Hello';
  print(str1);
  String str2 = "你好世界"; // 通过string关键字声明字符串
  print(str2);

  // 正则表达式
  var reg = RegExp(r'\d+'); // 匹配数字,\d表示数字,+,表示一个或多个
  print(reg);

  // 字符串拼接
  print(str1 + str2); // Hello你好世界 ,‘+‘是字符串拼接,中间不会有空格
  // 字符串插值
  print('$str1 $str2'); // Hello 你好世界 ,‘$’是字符串插值,中间会有空格

  // 字符串的分割
  var str = 'Hello,world';
  // 分割字符串
  print(str.split(',').toList()); // [Hello, world] ,‘split’是分割字符串的方法,返回一个列表

  // 字符串的裁切
  var strCut = 'Hello,world';
  // 裁切字符串
  print(strCut.substring(0, 5)); // Hello ,‘substring’是裁切字符串的方法,返回一个子串
  print(' abc '.trim()); // abc ,‘trim’是裁切字符串的方法,返回一个去掉前后空格的子串

  // 判断字符串是否为空
  var strEmpty = '';
  // 判断字符串是否为空
  print(strEmpty.isEmpty); // true ,‘isEmpty’是判断字符串是否为空的方法,返回一个布尔值
  print(strEmpty.isNotEmpty); // false ,‘isNotEmpty’是判断字符串是否不为空的方法,返回一个布尔值
  // 字符串替换
  print(str1.replaceAll('Hello', '你好')); //逗号前面为需要替换的内容,逗号后面为替换后的内容
  // 支持正则表达式替换
  print('h1k2d3n4n5n'.replaceAll(RegExp(r'\d+'), '+')); // 替换字符串中的数字为 + 号

  // 通过正则匹配手机号
  var isphone = RegExp(r'^1[3578]\d{9}$'); // 匹配手机号,1开头,第二位是3578中的一个数字,后面跟9个数字
  print(isphone.hasMatch('13833333334')); // 检测手机号是否正确
  // 关于此处正则表达式的符号解释:
  // r前缀表示原生字符串,里面的字符串返斜杠 \ 不会当作转义字符处理,比如\n不会被当作换行符处理
  // ^ 表示字符串的开始
  // $ 表示字符串的结束
  // \d 表示数字,等同于[0-9]
  // {n} 表示前面的字符出现恰好n次
  // + 表示前面的字符出现一次或多次

  // 查找字符串
  var strFind = 'Hello,world';
  print(strFind.indexOf('o')); // 4 ,‘indexOf’是查找字符串的方法,返回一个子串在父串中的位置.(人话:从左往右找)
  // 查找字符串最后一次出现的位置
  print(strFind.lastIndexOf(
      'o')); // 找‘o’ ,‘lastIndexOf’是查找字符串最后一次出现的位置的方法,返回一个子串在父串中最后一次出现的位置(人话:从右往左找)
}
