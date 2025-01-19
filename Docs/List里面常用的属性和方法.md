## List 常用属性和方法详解
List里面常用的属性和方法：

    常用属性：
        length          长度
        reversed        翻转
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法：  
        add         增加
        addAll      拼接数组
        indexOf     查找  传入具体值
        remove      删除  传入具体值
        removeAt    删除  传入索引值
        fillRange   修改   
        insert(index,value);            指定位置插入    
        insertAll(index,list)           指定位置插入List
        toList()    其他类型转换成List  
        join()      List转换成字符串
        split()     字符串转化成List
        forEach   
        map
        where
        any
        every

#### 常用属性详解

1. **length**：
   - 获取列表的长度（元素个数）。
   ```dart
   List<int> numbers = [1, 2, 3];
   print(numbers.length); // 输出: 3
   ```

2. **reversed**：
   - 返回一个迭代器，按相反顺序遍历列表。需要转换为 `List` 使用。
   ```dart
   List<int> numbers = [1, 2, 3];
   print(numbers.reversed.toList()); // 输出: [3, 2, 1]
   ```

3. **isEmpty**：
   - 判断列表是否为空。
   ```dart
   List<int> numbers = [];
   print(numbers.isEmpty); // 输出: true
   ```

4. **isNotEmpty**：
   - 判断列表是否不为空。
   ```dart
   List<int> numbers = [1, 2, 3];
   print(numbers.isNotEmpty); // 输出: true
   ```

#### 常用方法

1. **add(element)**：
   - 向列表末尾添加一个元素。
   ```dart
   List<int> numbers = [1, 2, 3];
   numbers.add(4);
   print(numbers); // 输出: [1, 2, 3, 4]
   ```

2. **addAll(iterable)**：
   - 将另一个可迭代对象的所有元素添加到列表末尾。
   ```dart
   List<int> numbers = [1, 2, 3];
   numbers.addAll([4, 5]);
   print(numbers); // 输出: [1, 2, 3, 4, 5]
   ```

3. **indexOf(element)**：
   - 查找指定元素的第一个索引位置，如果不存在则返回 `-1`。
   ```dart
   List<int> numbers = [1, 2, 3, 2];
   print(numbers.indexOf(2)); // 输出: 1
   ```

4. **remove(element)**：
   - 删除列表中第一个匹配的元素，并返回该元素；如果未找到则返回 `null`。
   ```dart
   List<int> numbers = [1, 2, 3];
   numbers.remove(2);
   print(numbers); // 输出: [1, 3]
   ```

5. **removeAt(index)**：
   - 删除指定索引位置的元素，并返回该元素；如果索引超出范围则抛出异常。
   ```dart
   List<int> numbers = [1, 2, 3];
   numbers.removeAt(1);
   print(numbers); // 输出: [1, 3]
   ```

6. **fillRange(start, end, [fillValue])**：
   - 使用 `fillValue` 替换从 `start` 到 `end-1` 范围内的元素。
   ```dart
   List<int> numbers = [1, 2, 3, 4, 5];
   numbers.fillRange(1, 4, 0);
   print(numbers); // 输出: [1, 0, 0, 0, 5]
   ```

7. **insert(index, element)**：
   - 在指定索引位置插入一个元素，后续元素向后移动。
   ```dart
   List<int> numbers = [1, 2, 3];
   numbers.insert(1, 5);
   print(numbers); // 输出: [1, 5, 2, 3]
   ```

8. **insertAll(index, iterable)**：
   - 在指定索引位置插入一个可迭代对象的所有元素，后续元素向后移动。
   ```dart
   List<int> numbers = [1, 2, 3];
   numbers.insertAll(1, [5, 6]);
   print(numbers); // 输出: [1, 5, 6, 2, 3]
   ```

9. **toList()**：
   - 将其他类型（如集合、映射等）转换为 `List`。
   ```dart
   Set<int> set = {1, 2, 3};
   List<int> list = set.toList();
   print(list); // 输出: [1, 2, 3]
   ```

10. **join([separator])**：
    - 将列表中的元素连接成一个字符串，元素之间用 `separator` 分隔，默认为空字符串。
    ```dart
    List<String> words = ['hello', 'world'];
    print(words.join(' ')); // 输出: hello world
    ```

11. **split(separator)**：
    - 字符串方法，将字符串按 `separator` 分割成列表。
    ```dart
    String sentence = "hello world";
    List<String> words = sentence.split(' ');
    print(words); // 输出: [hello, world]
    ```

12. **forEach(void f(E element))**：
    - 对列表中的每个元素执行给定的操作。
    ```dart
    List<int> numbers = [1, 2, 3];
    numbers.forEach((num) => print(num));
    // 输出:
    // 1
    // 2
    // 3
    ```

13. **map(f)**：
    - 返回一个新的列表，其中包含对原列表每个元素应用函数 `f` 的结果。
    ```dart
    List<int> numbers = [1, 2, 3];
    List<int> squares = numbers.map((num) => num * num).toList();
    print(squares); // 输出: [1, 4, 9]
    ```

14. **where(bool test(E element))**：
    - 返回一个新的列表，其中包含满足条件 `test` 的元素。
    ```dart
    List<int> numbers = [1, 2, 3, 4, 5];
    List<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();
    print(evenNumbers); // 输出: [2, 4]
    ```

15. **any(bool test(E element))**：
    - 如果列表中至少有一个元素满足条件 `test`，则返回 `true`。
    ```dart
    List<int> numbers = [1, 2, 3, 4, 5];
    bool hasEven = numbers.any((num) => num % 2 == 0);
    print(hasEven); // 输出: true
    ```

16. **every(bool test(E element))**：
    - 如果列表中所有元素都满足条件 `test`，则返回 `true`。
    ```dart
    List<int> numbers = [2, 4, 6];
    bool allEven = numbers.every((num) => num % 2 == 0);
    print(allEven); // 输出: true
    ```

### 总结
以上是 Dart 中 `List` 类型常用的属性和方法。通过这些属性和方法，可以方便地进行列表的创建、查询、修改和转换操作。