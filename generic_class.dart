import 'dart:core';
import 'dart:convert';

//define an interface
abstract class Cache<T>{
  T getByKey(String key);
  void setByKey(String key, T value);
}

class StringCache extends Cache<String> {
  Map<String, dynamic> cacheMap = Map<String, dynamic>();

  @override
  String getByKey(String key) {
    return cacheMap[key];
  }

  @override
  void setByKey(String key, String value) {
    cacheMap[key] = value;
  }
  
  @override
  String toString() {
    return jsonEncode(cacheMap);
  }
}

class AnyCache<T>{
  Map<String, T> cacheMap = Map<String, T>();

  T? getByKey(String key) {
    return cacheMap[key];
  }

  void setByKey(String key, T value) {
    cacheMap[key] = value;
  }
  
  @override
  String toString() {
    return jsonEncode(cacheMap);
  } 
}
void main(List<String> args) {
  StringCache stringCache = StringCache();
  stringCache.setByKey('key1', 'val1');
  stringCache.setByKey('key2', 'val2');
  assert(stringCache.toString() == '{"key1":"val1","key2":"val2"}');
  assert(stringCache is StringCache); // https://dart.dev/guides/language/language-tour#getting-an-objects-type

  AnyCache<int> intCache = AnyCache<int>();
  intCache.setByKey('two', 2);
  intCache.setByKey('one', 1);
  assert(intCache.toString() == '{"two":2,"one":1}');
  assert(intCache is AnyCache<int>);
}