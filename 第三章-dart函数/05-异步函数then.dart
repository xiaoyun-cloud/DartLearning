//异步函数通过promise实现(JS)
//在dart中，异步函数通过Future实现
//async表示异步函数,返回一个Future对象,await用于等待future
//async需要写在函数名后面

//异步函数
//https://httpbin.org/ip 返回当前ip地址的接口

import 'package:http/http.dart' as http; //导入http包,第三方包,可在资料库中查看生态地址

Future getIPaddress() {
  final url = 'https://httpbin.org/ip';
  return http.get(url).then((response) {
    print(response.body); //http.get(url)：使用 http.get 方法发送一个 GET 请求到指定的 URL。
    //then((response)：当请求完成时，then 方法会被调用，它会传递一个 Response 对象给回调函数。
    //print(response.body)：打印 response.body，即 HTTP 响应的主体内容。对于 https://httpbin.org/ip，响应主体将是一个 JSON 字符串，包含客户端的 IP 地址。
  });
} //

void main() {
  getIPaddress()
      .then((ip) => print(ip)) //不能使用IP大写
      .catchError((Error) => print(Error)); //调用getIPaddress函数
  //调用getIPaddress函数
}
