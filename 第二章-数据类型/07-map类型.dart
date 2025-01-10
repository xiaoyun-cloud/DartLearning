//map类型
//map类型是键-值对类型，键是唯一的，值可以重复,简单来说,map可以允许你将不同类型的数据作为键和值,进行录入.类似于表格中的表头与数字
//通常被用来存储键值对数据,称之为哈希或者字典
//version: 1.0

void main() {
  //第一种声明方法
  var map = {
    'name': '张三',
    'age': 18,
    'sex': '男',
  }; //创建map类型,其中‘age’是键，符号: 是键值对，18是值
  print(map);

  //第二种声明方法
  var map2 = Map(); //此处表示采用默认的构造函数,用map方法创建一个map类型,新版本dart省略了new关键字
  map2['name'] = '李四';
  map2['age'] = 19;
  map2['sex'] = '女';
  print(map2);
  print(map2['name']); //获取map中的某个属性值

  //第三种声明方法
  map['name'] = '王五';
  //判断map中是否有某个key
  if (map.containsKey('name')) {
    print('map中存在name键');
  } else {
    print('map中不存在name键');
  }
  //判断map中某个对应的key对应的某个值是否存在
  if (map.containsValue('王五')) {
    print('map中存在value为王五的键');
  } else {
    print('map中不存在value为王五的键');
  }

  //删除map中的某个键值对
  map.remove('name');
  print(map);

  //赋值
  //如果key不存在，则添加，如果key存在，则修改
  map2.putIfAbsent('学历', () => '大学');
  print(map2);

  //获取map2中的所有key
  print(map2.keys);
  //获取map2中的所有value
  print(map2.values);

  //获取map2中的所有键值对
  print(map2.entries);

  //根据条件进行删除
  map2.removeWhere(
      (key, value) => value == '男'); //代码逻辑: 如果value等于男，则删除,也可以将条件改为 key == '大学'
  print(map2);
}
