import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Human {
  String _fullName;
  String _gender;
  String _address;
  int? _phoneNumber;
  int _age;
  // Human(this.fullName, this.address, [this.gender, this.phoneNumber, this.age]);

  //to access the private variable we initally set the getters for all the variables
  Human(
    this._fullName,
    this._address,
    this._gender,
    this._age,
    this._phoneNumber,
  );
  String get fullName => _fullName;
  String get gender => _gender;
  String get address => _address;
  int? get phoneNumber => _phoneNumber;
  int get age => _age;

  set fullName(String value) => _fullName = value;
  set gender(String value) => _gender = value;
  set address(String value) => _address = value;
  set phoneNumber(int? value) => _phoneNumber = value;
  set age(int value) => _age = value;
  @override
  String toString() {
    return 'Human{fullName:$_fullName,gender:$_gender,address:$_address,phoneNumber:$_phoneNumber,age:$_age}';
  }
}

//_is used to make variable private

//constructor can be accesed by $_ in
//get is used to get private varaible

//unnamed parameter and its hadeling
//getters and setters
