import 'package:flutter/material.dart';
// import 'package: flutter_lat1/tabbar.dart':
import 'package:flutter_lat1/home_page.dart';
// import 'package:flutter_lat1/layouting_example.dart';

// import layouting.dart':
// import 'package: flutter_lat1/tabbar_widget.dart';

// import 'package:flutter_lat1/home_page.dart';

// import 'dialog_widget.dart';
// import 'Listview_widget.dart';
// import 'Layouting_example.dart';

//import 'package:flutter_lat1/layouting_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
