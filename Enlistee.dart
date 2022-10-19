import 'dart:core';

class Enlistee {
  String rank;
  String name;
  int? age;
  
  setRank(String rank) {
    this.rank = rank;
  }
  
  setName(String name) {
    this.name = name;
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
  
  soldier.setRank('commander in chief');
  soldier.setAge(33);
  soldier.setName('superman');
  String info = soldier.info();
  
  print(info);
}

