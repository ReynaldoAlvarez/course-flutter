import 'package:flutter/material.dart';
import 'package:fl_components/screen/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'list1': (BuildContext context) => const Listview2Screen(),
        'alert': (BuildContext context) => const AlterScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlterScreen(),
        );
      },
    );
  }
}
