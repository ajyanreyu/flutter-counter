import 'package:flutter/material.dart';
import 'package:flutter_counter/src/pages/counter_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: CounterPage()));
  }
}
