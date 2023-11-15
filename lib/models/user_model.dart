import 'package:flutter/material.dart';

class UserModel {
  String username;
  String fullName;
  String imageUrl;
  String birthDay;
  String hobby;
  String address;
  Icon iconhobby;

  UserModel({
    required this.username,
    required this.fullName,
    required this.imageUrl,
    required this.birthDay,
    required this.hobby,
    required this.address,
    required this.iconhobby,
  });
}
