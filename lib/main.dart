import 'package:flutter/material.dart';
import 'package:project_lagu/pages/pageUtama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageUtama(),
    );
  }
}
