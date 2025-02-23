/*引入接口
此处引入的是接口文件，不是具体的实现文件
 `lib/services/`
- **用途**：存放与外部服务、API 请求等交互的代码。
- **命名规则**：以服务的功能命名，如 `auth_service.dart`（身份验证服务），`network_service.dart`（网络请求服务）。
- **作用**：提供与外部系统的交互，通常是通过 HTTP 请求、Firebase、数据库等进行的。*/
import 'lib/services/MySql.dart'; // 引入接口,不然会报错
import 'lib/services/MsSql.dart';

void main() {
  MySql mysql = new MySql();
  mysql.add("123");
  MsSql msSql = new MsSql();
  msSql.add("123");
  msSql.uri = '127.0.0.1';
}

//end
