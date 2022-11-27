// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled3/login.dart';
import 'package:untitled3/register.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login':(context)=>MyLogin(),
    'register':(context)=>MyRegister()},
  ));
}


