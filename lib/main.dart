import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/blocDelegate.dart';
import 'package:bloc_counter/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
