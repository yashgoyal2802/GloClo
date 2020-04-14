import 'package:flutter/material.dart';
import 'package:gloclo/pages/choose_location.dart';
import 'package:gloclo/pages/home.dart';
import 'package:gloclo/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
