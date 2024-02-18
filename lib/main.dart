import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:register_app/request.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Request request = Request();
  late Timer _timer;
  late bool response ;
  int count = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) async{
       response = await request.checkRegisterState();
      setState(()  {
        count++;
       
      });
    });
    if (response) {
      _timer.cancel();
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter CI/CD'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              if (response) ...[
                const Text('Register now!'),
              ] else ...[
                const Text('Not yet!'),
              ],
              const SizedBox(height: 20),
               Text('You have checked $count times'),
            ],
          ),
        ),
      ),
    );
  }
}
