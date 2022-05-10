import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/provider/poke_provider.dart';
import '/screens/home_screen.dart';
import '/screens/poke_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PokeProvider(),
      child: MaterialApp(
        title: 'Pokki Moni',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
        routes: {
          PokeDetailScreen.routeName: (ctx) => PokeDetailScreen(),
        },
      ),
    );
  }
}
