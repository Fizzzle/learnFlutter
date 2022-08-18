import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adding Assets'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage('assets/images/bg.jpg'),
              ),
              Image.asset('assets/icons/pngwing.com.png'),
            ],
          ),
        ),
      ),
    );
  }
}
