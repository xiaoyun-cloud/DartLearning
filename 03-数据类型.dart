void main() {
  // 数据类型String,单双引号都可以,三个引号可以包含换行符
  // 需要阅读常见的API文档
  // 声明字符串
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

  // 判断字符串是否为空
  var strEmpty = '';
  // 判断字符串是否为空
  print(strEmpty.isEmpty); // true ,‘isEmpty’是判断字符串是否为空的方法,返回一个布尔值
  print(strEmpty.isNotEmpty); // false ,‘isNotEmpty’是判断字符串是否不为空的方法,返回一个布尔值
}
