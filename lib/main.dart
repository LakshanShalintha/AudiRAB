import 'package:flutter/material.dart';

import 'LogInPage.dart';
import 'SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Audio Book App',
      theme: ThemeData(
        hintColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  get google => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text('Search'),
                  value: 'search',
                ),
                PopupMenuItem(
                  child: Text('Menu'),
                  value: 'menu',
                ),
                PopupMenuItem(
                  child: Text('Log'),
                  value: 'log',
                ),
                PopupMenuItem(
                  child: Text('Sign'),
                  value: 'sign',
                ),
              ],
              onSelected: (value) {
                // Handle item selection
                switch (value) {
                  case 'search':
                    // Navigate to search page
                    break;
                  case 'menu':
                    // Handle menu action
                    break;
                  case 'log':
                    // Navigate to login page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInPage()),
                    );
                    break;
                  case 'sign':
                    // Navigate to sign up page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                    break;
                }
              },
              icon: Icon(Icons.menu),
              onOpened: () {}, // Menu icon
            ),
            SizedBox(width: 8), // Spacing
            Icon(Icons.headphones), // Book icon
            SizedBox(width: 8), // Spacing
            Text('Audio Books', style: TextStyle(fontSize: 20.0)),
          ],
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to sign up page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => google.com()),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // Navigate to sign up page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
            icon: Icon(Icons.person_add),
          ),
          IconButton(
            onPressed: () {
              // Navigate to login page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogInPage()),
              );
            },
            icon: Icon(Icons.login),
          ),
        ],
      ),
      backgroundColor: Colors.red[200],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/7.jpg"),
            fit:BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
