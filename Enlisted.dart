import 'dart:collection';
import 'Person.dart';

class Enlisted extends Person {
  dynamic address;
  String? rank;
  String? name;
  String? nationality;
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

  Enlisted({this.name = 'Noob', this.rank = 'Enlistee', this.age, this.address, this.nationality = 'not specified'});
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
  final soldier = Enlisted(age: 37, address: address);

  String info = soldier.info();
  
  print(info);
}

