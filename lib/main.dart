import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/login.dart';
import 'package:loginapp/welcome.dart';
import 'package:loginapp/signup.dart';

import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Logpage()));
}
