import 'package:flutter/material.dart';
import 'package:poke_api_app/screens/HomeScreen.dart';


void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        
      },
    ));
