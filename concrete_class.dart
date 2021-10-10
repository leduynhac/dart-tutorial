import 'dart:core';

class Point{
  // All un-initialized instance variables have the value null.
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null
  double z = 0;

  // All instance variables generate an implicit getter method.

  // All Non-final/late final instance variables without initializers also generate an implicit setter method.
}

class ProfileMark{
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unamed() : name = '';
}

// https://dart.dev/guides/language/language-tour#factory-constructors
class Logger{
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name){
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  factory Logger.fromJson(Map<String, Object> json){
    return Logger(json['name'].toString());
  }

  void log(String msg){
    if (!mute) print(msg);
  }
}

void main(List<String> args) {
  var point = Point();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method fo rx.
  assert(point.y == null); // Value default to null

  var profileA = ProfileMark('A');
  assert(profileA.name == 'A');

  var profileB = ProfileMark.unamed();
  assert(profileB.name == '');
}