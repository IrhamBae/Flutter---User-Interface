import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'My Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome,',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(117, 108, 220, 1),
              ),
            ),
            Text(
              '1302220063 - Irham Baehaqi',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromRGBO(57, 142, 61, 1),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 200.0,
                maxWidth: 200.0,
                minHeight: 100.0,
                minWidth: 100.0,
              ),
              margin: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 90, 40, 255),
                    Color.fromARGB(255, 120, 79, 255),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
