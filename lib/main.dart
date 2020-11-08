import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadrunners/src/app.dart';
import 'package:roadrunners/src/services/authentication.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( StreamProvider<User>.value(
      value: Authentication().user,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MyApp())));
}
