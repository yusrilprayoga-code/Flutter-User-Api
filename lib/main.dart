import 'package:flutter/material.dart';
import 'package:request_api/screen/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            centerTitle: true,
          ),
          body: PageList()),
    );
  }
}
