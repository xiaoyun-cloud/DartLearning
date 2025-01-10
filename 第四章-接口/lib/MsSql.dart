import 'DB.dart';

class MySql implements DB {
  late String uri;
  add(String data) {
    print("MySql add");
  }

  save() {
    print("MySql save");
  }

  delete() {
    print("MySql delete");
  }

  update() {
    print("MySql update");
  }
}
