import 'dart:core';

/// Ref: https://dart.dev/guides/language/language-tour#maps
void main(List<String> args) {

  // create Dart maps using map literals
  // Dart infers that gifts1 has the type Map<String, String>
  var gifts1 = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  // Dart infers that nobleGases1 has the type Map<int, String>
  var nobleGases1 = {
    2: 'helium',
    10: 'neon',
    18: 'argon'
  };

  // create Dart maps using a Map constructor
  var gifts2 = Map<String, String>();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  var nobleGases2 = Map<int, String>();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  // add a new key-value pair to an existing map just as you would in JavaScript
  gifts1['fourth'] = 'calling birds';
  assert(gifts1['fourth'] == 'calling birds');

  // If you look for a key that isn't in a map, you get a null in return
  assert(gifts2['fourth'] == null);
}