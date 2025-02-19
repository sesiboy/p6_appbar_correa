import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CORREA FLUTTER', // Application title
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color theme for the app
      ),
      home: const MyHomePage(title: 'CORREA APPBAR'), // Home page widget
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}, //lo que estre llaves son las acciones
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.red,
        title: Text(
          title, // The title text for the AppBar
          style: const TextStyle(fontSize: 24), // Styling the title text
        ),
        leading: const Icon(Icons.bike_scooter), // Leading icon on the AppBar
      ),
      body: const Center(
        child: Text(
          'HOLA JIREH CORREA CON APPBAR',
          style: TextStyle(fontSize: 20), // Text styling
        ),
      ),
    );
  }
}
