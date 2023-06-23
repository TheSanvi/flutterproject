import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: const Text("My App"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              height: 300,
              width: 500,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1'),
                        Text('2'),
                        Text('3'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('4'),
                        Text('5'),
                        Text('6'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('7'),
                        Text('8'),
                        Text('9'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ));
  }
}
