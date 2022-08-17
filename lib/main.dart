import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  bool _loading = false;
  double _progressValue = 0.0;
  double _size = 25.0;

  @override
  void initState() {
    _loading;
    _progressValue;
    _size;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Eduardo de App'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearProgressIndicator(value: _progressValue),
                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                : Text(
                    'My app',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _size,
                    ),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgres();
            });
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgres() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(
        oneSec,
        (Timer t) => {
              setState(() {
                _progressValue += 0.2;

                if (_progressValue.toStringAsFixed(1) == '1.0') {
                  _loading = false;
                  t.cancel();
                  _progressValue = 0.0;
                  return;
                }
              })
            });
  }
}
