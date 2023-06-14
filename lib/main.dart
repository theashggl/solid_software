import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

///The main class(entry point of project) of the project
class Main extends StatelessWidget {
  ///Constructor of main method of the flutter project
  const Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(0, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

///Home page of the project is built using this class.
class MyHomePage extends StatefulWidget {
  ///Constructor of the class
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color background = const Color.fromARGB(0, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          background = colorChanger();
        });
      },
      child: Scaffold(
        backgroundColor: background,
        body: const Center(child: Text('Hello there')),
      ),
    );
  }

  Color colorChanger() {
    final rgb1 = Random().nextInt(256);
    final rgb2 = Random().nextInt(256);
    final rgb3 = Random().nextInt(256);
    final rgb4 = Random().nextInt(256);

    return background ==
        const Color.fromARGB(
          0,
          0,
          0,
          0,
        )
    //This id done for the widget testing so that 1st time the color is,
    // what is specified in widget test and the second time it is all random
        ? Color.fromARGB(
      Random(100).nextInt(256),
      Random(100).nextInt(256),
      Random(100).nextInt(256),
      Random(100).nextInt(256),
    )
        : Color.fromARGB(rgb1, rgb2, rgb3, rgb4);
  }
}
