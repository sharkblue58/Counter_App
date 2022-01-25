import 'package:bloc/bloc.dart';
import 'package:counter/shared/cubit/cubit_obsever.dart';
import 'package:flutter/material.dart';
import 'modules/screen_counter.dart';






void main() {
  Bloc.observer = MyBlocObserver();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CounterScreen () ,
    );
  }

}

