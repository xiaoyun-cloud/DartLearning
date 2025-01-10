//此处放置不常用的字符类型
//runes (符文字符)类型,即为emo表情包👍,具体可查看https://copychar.cc/
//Symbol类型,即为Unicode字符,在dart中为使用#开头的标识符
//dynamic类型,可以赋值任意类型,但是不能使用,因为dart是强类型语言,所以不能使用
//void类型,表示函数没有返回值,但是可以赋值给其他类型,但是不能使用
//Never类型,表示函数不会返回,但是可以赋值给其他类型,但是不能使用
//Object类型,表示所有类型,但是不能赋值给其他类型,但是可以使用
//List类型,表示列表,但是不能赋值给其他类型,但是可以使用

/*
  内置方法/函数：

      print();

  自定义方法：
      自定义方法的基本格式：

      返回类型  方法名称（参数1，参数2,...）{
        方法体
        return 返回值;
      }
*/
//调试代码:https://dartpad.cn/

//code version: 1.2

void main() {
  var str = '👍';
  print(str);
  print(str.length); //为什么返回2?因为dart中的字符串是UTF-16字符,用1位表示不了此表情包,所以返回2
  print(str.runes.length); //返回1长度,通过UTF-32字符,可以表示此表情包

  //runes 可以将UTF-32字符集转成符号
  Runes input = new Runes('\u{1f44d}');
  print(String.fromCharCodes(
      input)); //fromCharCodes将UTF-32字符集转成字符串,fromCharCode因为只能转成单个字符,所以只能转成单个字符
  print(String.fromCharCode(0x1f44d));

  //Symbol 的声明
  var a = #abc;
  print(a);
  //构造函数声明
  var b = new Symbol('abc');
  print(b);

  print(#abc == Symbol('abc')); //比较Symbol对象是否相等

  //声明动态类型变量
  dynamic c = 'abc';
  c = 123; //原来是字符串,后面改为123
  print(c);
}

//end
