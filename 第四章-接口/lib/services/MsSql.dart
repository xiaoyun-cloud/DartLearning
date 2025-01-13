import 'DB.dart';

class MsSql implements DB {
  late String uri;
  add(String data) {
    print("MsSql add" + data);
  }

  save() {
    print("MsSql save");
  }

  delete() {
    print("MsSql delete");
  }

  update() {
    print("MsSql update");
  }
}
