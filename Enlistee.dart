import 'dart:core';
import 'dart:collection';

class Enlistee {
  String rank;
  String name;
  int? age;
    
  String get theRank {
    return rank;
  }
  
  set setRank(String rank) {
    this.rank = rank;
  }
 
  String get theName {
    return name;
  }
  
  set setName(String name) {
    this.name = name;
  }

  int? get theAge {
    return age;
  }
  
  set setAge(int age) {
    age = age;
  }
  
  Enlistee({this.rank = 'private', this.name = 'newbie', this.age});
  
}

void main() {
  final soldier = Enlistee(rank: 'general', name: 'moose', age: 37);
  
  print(soldier.theRank);
  print(soldier.theName);
  print(soldier.theAge);
//   print(soldier.setRank('tuttee'));
  print(soldier.rank);
}

