// 泛型方法（Generic Method）是一个可以处理多种数据类型的函数。
// 它的返回类型和参数类型可以使用泛型占位符。
T? getFirstElement<T>(List<T> list) {
  // 这里 T 是一个泛型占位符，表示 list 中元素的类型。
  // 该方法返回列表中的第一个元素，如果列表为空则返回 null。
  return list.isNotEmpty ? list.first : null;
}

// 泛型类（Generic Class）是一个可以处理多种数据类型的类。
// 类的成员变量和方法可以使用泛型占位符。
class Box<T> {
  // T 是一个泛型占位符，表示 Box 类中存储的数据类型。
  T content;

  Box(this.content);

  void displayContent() {
    print('The content of the box is: $content');
  }
}

// 泛型接口（Generic Interface）是一个可以处理多种数据类型的接口。
// 接口中的方法可以使用泛型占位符。
abstract class Container<T> {
  // T 是一个泛型占位符，表示 Container 接口中处理的数据类型。
  void add(T item);
  T remove();
}

// 实现泛型接口的类需要指定具体的泛型类型。
class ListContainer<T> implements Container<T> {
  List<T> _items = [];

  @override
  void add(T item) {
    _items.add(item);
  }

  @override
  T remove() {
    if (_items.isNotEmpty) {
      return _items.removeLast();
    }
    throw Exception('No items to remove');
  }
}

void main() {
  // 使用泛型方法
  var numbers = [1, 2, 3, 4];
  var firstNumber = getFirstElement(numbers);
  print('First number: $firstNumber');

  var words = ['hello', 'world'];
  var firstWord = getFirstElement(words);
  print('First word: $firstWord');

  // 使用泛型类
  var intBox = Box<int>(42);
  intBox.displayContent();

  var stringBox = Box<String>('Hello, Dart!');
  stringBox.displayContent();

  // 使用泛型接口
  var container = ListContainer<String>();
  container.add('apple');
  container.add('banana');
  print('Removed item: ${container.remove()}');
}
