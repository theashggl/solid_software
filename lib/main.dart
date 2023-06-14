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
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
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
  static const parameterARGB = 0;
  Color background = const Color.fromARGB(
    parameterARGB,
    parameterARGB,
    parameterARGB,
    parameterARGB,
  );

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
    const parameterRandom = 100;
    const parameterNextInt = 256;
    final rgb1 = Random().nextInt(parameterNextInt);
    final rgb2 = Random().nextInt(parameterNextInt);
    final rgb3 = Random().nextInt(parameterNextInt);
    final rgb4 = Random().nextInt(parameterNextInt);

    return background ==
            const Color.fromARGB(
              parameterARGB,
              parameterARGB,
              parameterARGB,
              parameterARGB,
            )
        //This id done for the widget testing so that 1st time the color is,
        // what is specified in widget test and the second time it is all random
        ? Color.fromARGB(
            Random(parameterRandom).nextInt(parameterNextInt),
            Random(parameterRandom).nextInt(parameterNextInt),
            Random(parameterRandom).nextInt(parameterNextInt),
            Random(parameterRandom).nextInt(parameterNextInt),
          )
        : Color.fromARGB(rgb1, rgb2, rgb3, rgb4);
  }
}
