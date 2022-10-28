import 'dart:collection';
import 'Enlisted.dart';

class Soldier extends Enlisted {
  final int? age;
  final String? name;
  final dynamic address;
  String? rank = 'Soldier';
  String? specialty;
  String? squadron;
  String? weapons;
  String? ammunition;

  @override
  String info() {
    return
        '$rank\n'
        '$name,\n'
        '$age\n'
        '$specialty\n'
        '$squadron\n'
        '$weapons\n'
        '$ammunition';
  }

  void setRank(String rank) {
    this.rank = rank;
  }

  Soldier({
    this.name,
    this.age,
    this.rank,
    this.address,
    this.specialty,
    this.squadron,
    this.weapons,
    this.ammunition
  });
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
  final soldier = Soldier(
      name: 'Moose',
      age: 37,
      address: address,
      rank: 'Private',
      specialty: 'Pilot',
      squadron: 'Alpha',
      weapons: 'M4-15',
      ammunition: 'ammobox'
  );
  String info = soldier.info();
  print(info);
}