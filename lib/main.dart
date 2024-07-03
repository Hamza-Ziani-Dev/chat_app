import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App',
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          appBar: AppBar(title: const Text('Chat')),
        ));
  }
}
