import 'package:flutter/material.dart';

void main() {
  runApp(const CounterWidget());
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 50;

  @override
  void initState() {
    _counter = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tap "-" to decrement'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _counter -= 1;
                        });
                      },
                      icon: Icon(Icons.accessible_forward)),
                  Text('${_counter}', style: TextStyle(fontSize: 30)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _counter += 1;
                        });
                      },
                      icon: Icon(Icons.plus_one)),
                ],
              ),
              Text('Tap "+" to increment')
            ],
          ),
        ),
      ),
    );
  }
}
