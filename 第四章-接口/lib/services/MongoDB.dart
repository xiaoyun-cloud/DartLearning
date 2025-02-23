import 'DB.dart';

class MongoDB implements DB {
  late String uri;
  add(String data) {
    print("MongoDB add");
  }

  save() {
    print("MongoDB save");
  }

  delete() {
    print("MongoDB delete");
  }

  update() {
    print("MongoDB update");
  }
}
