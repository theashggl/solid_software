import 'package:flutter/material.dart';
import 'package:solid_software/Model/background_color.dart';

///The main class(entry point of project) of the project
class HomePage extends StatelessWidget {
  ///Constructor of main method of the flutter project
  const HomePage({super.key});

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
  BackgroundColor backgroundColor = BackgroundColor();

  @override
  Widget build(BuildContext context) {
    Color? background = backgroundColor.background;

    return GestureDetector(
      onTap: () {
        setState(() {
          background = backgroundColor.colorChanger();
        });
      },
      child: Scaffold(
        backgroundColor: background,
        body: const Center(child: Text('Hello there')),
      ),
    );
  }
}
