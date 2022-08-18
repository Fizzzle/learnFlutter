import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'IndieFlower'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adding Assets'),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                image: AssetImage('assets/images/bg.jpg'),
              ),
              Image.asset('assets/icons/pngwing.com.png'),
              Positioned(
                top: 130,
                right: 50,
                child: Text(
                  'Hello Im Viktor ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
