import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/1.jpeg',
                width: 200,
                height: 200,
              ),
              buildStack(),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/1.jpeg',
          width: 200,
          height: 200,
        ),
        const Text(
          "Welcome to Flutter",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
