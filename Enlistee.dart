import 'dart:collection';
import 'Person.dart';

class Enlistee extends Person {
  dynamic address;
  String? rank = 'Enlistee';
  String? name;
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
    String mailingAddress =
        '${address["street"]} '
        '${address["street2"]} '
        '${address["city"]} '
        '${address["state"]} '
        '${address["zip"]}';
    return '$rank $age $name - $mailingAddress';
  }

  void setAddress(HashMap<dynamic, dynamic> address) {
    this.address = address;
  }

  Enlistee({this.name = 'noob', this.rank, this.age, this.address});
}

void main() {
  HashMap address = new HashMap<dynamic, dynamic>();
  address.addAll({
    'street': '1000 Vin Scully Ave',
    'street2': 'Unit 007',
    'city': 'Los Angeles',
    'state': 'CA',
    'zip': '90012',
  });
  final soldier = Enlistee(age: 37, address: address, name: 'asdf');

  String info = soldier.info();
  
  print(info);
}

