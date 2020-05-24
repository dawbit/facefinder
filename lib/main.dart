import 'package:facefinder/screens/background/background_screen.dart';
import 'package:facefinder/screens/select_pic/select_pic_screen.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import 'blocs/face_finder_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.yellowAccent,
          brightness: Brightness.light,
        ),
        home: BackgroundScreen()
      ),
    );
  }

  List<Bloc> get _blocs => [
    Bloc((_) => FaceFindeBloc()),
  ];

}

