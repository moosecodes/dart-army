import 'dart:collection';

import 'Person.dart';

class Enlistee extends Person {
  dynamic address;
  String rank = 'Enlistee';
  String name;
  int? age;

  @override
  setName(String name) {
    this.name = name;
    return name;
  }

  @override
  setAge(int age) {
    this.age = age;
    return age;
  }

  @override
  String info() {
    return '$rank $age $name - ${address["street"]}';
  }

  void setRank(String rank) {
    this.rank = rank;
  }

  void setAddress(HashMap<dynamic, dynamic> address) {
    this.address = address;
  }

  Enlistee({this.name = 'newbie', this.age, this.address});
}

void main() {
  HashMap address = new HashMap<dynamic, dynamic>();
  address.putIfAbsent('street', () => '1000 Vin Scully Ave, Los Angeles, CA 90012');
  final soldier = Enlistee(name: 'moose', age: 37, address: address);

  String info = soldier.info();
  
  print(info);
}

