import 'dart:core';

class Enlistee {
  String rank;
  String name;
  int? age;
    
  String get theRank {
    return rank;
  }
  
  setRank(String rank) {
    this.rank = rank;
  }
 
  String get theName {
    return name;
  }
  
  setName(String name) {
    this.name = name;
  }

  int? get theAge {
    return age;
  }
  
  setAge(int age) {
    this.age = age;
  }
  
  String info() {
    return '$name $age $rank';
  }
  
  Enlistee({this.rank = 'private', this.name = 'newbie', this.age});
  
}

void main() {
  final soldier = Enlistee(rank: 'general', name: 'moose', age: 37);
  
  soldier.setRank('comannder in chief');
  soldier.setAge(33);
  soldier.setName('superman');
  String info = soldier.info();
  
  print(info);
}

