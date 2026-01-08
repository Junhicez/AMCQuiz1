import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: specifies the title, theme, and opening screen for the entire app
        title: 'Week 1 - All 8 Widgets',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HomeScreen(),
      );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 Basic visual layout structure: offers the body layout and app bar
        appBar: AppBar( // #3 Top application bar: shows the activities and title
          title: const Text('All Widgets'),
        ),
        body: Center( // #7 Puts its child widget in the middle of the screen
          child: Container( // #8 A box widget for styling, padding, and layout
            padding: const EdgeInsets.all(20),
            child: Column( // #6 Positions its children vertically
              children: [
                Row( // #5 Puts its children in a horizontal position
                  children: [
                    const Icon(Icons.star),
                    const Text('Flutter'), // #4 Shows written information on the screen
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
