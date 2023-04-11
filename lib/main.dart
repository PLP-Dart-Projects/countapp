import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countValue = 0;

  void incrementValue() {
    setState(() {
      countValue++;
    });
  }

  void decrementValue() {
    if (countValue > 0) {
      setState(() {
        countValue--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'The current value is $countValue',
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: decrementValue,
              child: const Text('Decrement'),
            ),
            TextButton(
              onPressed: incrementValue,
              child: const Text('Increment'),
            ),
          ],
        ),
      ],
    );
  }
}



/*
  Myapp
  Materialapp
  Scafford
  SafeArea
  Text
*/
