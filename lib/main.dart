import 'package:first_app/view/screens/homescreen.dart';
import 'package:first_app/view/screens/logoscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}
 class App extends StatelessWidget {
   const App({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
         theme: ThemeData(useMaterial3: true),
     debugShowCheckedModeBanner: false,
     title: 'FURNITURE',
     initialRoute: '/',
     routes: {
       '/': (context) => First(),
       '/sec' : (context) => Second(),
     }
     );
   }
 }
