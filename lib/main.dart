import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prolog/person.dart';

import 'package:prolog/splash.dart';

import 'boxes.dart';


const SAVE_KEY_NAME='UserLogin';
void main() async {
  await Hive.initFlutter();
  
Hive.registerAdapter(PersonAdapter());
boxPersons = await Hive.openBox<Person>('personBox');

  runApp(MyApp());
}
// stateless widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenSplash(),
    );
  }
}

