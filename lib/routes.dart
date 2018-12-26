import 'package:flutter/material.dart';
import 'package:nabo_hjelp/screens/login.dart';
import 'package:nabo_hjelp/main.dart';

final routes = {
  '/login':         (BuildContext context) => LoginScreen(),
  '/':              (BuildContext context) => LoginScreen(),
  '/main':         (BuildContext context) => MainScreen(),
};