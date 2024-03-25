import 'package:flutter/material.dart';

import 'SignUpPage.dart';
import 'MyHomePage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  get google => google.com;
  get facebook => facebook.com;
  get tictok => tictok.com;

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
                      MaterialPageRoute(
                          builder: (context) => SignUpPage()),
                    );
                    break;
                }
              },
              icon: Icon(Icons.menu), // Menu icon
            ),
            SizedBox(width: 8), // Spacing
            Icon(Icons.headphones), // Book icon
            SizedBox(width: 8), // Spacing
            Text('AudioRAB', style: TextStyle(fontSize: 20.0)),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 93, 147, 223),
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
              // Navigate to login page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
            icon: Icon(Icons.person_add),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blue], // Add your colors here
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align logo at the top
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo1.jpg', // Provide your image path here
                width: 90, // Adjust the width as needed
                height: 90, // Adjust the height as needed
              ),
              Text(
                "Real Time Audio Book",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 250,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 5), // Spacing below logo
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.password),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 40.0, // Adjust button height as needed
                            child: ElevatedButton(
                              onPressed: () {
                                // Implement sign up functionality here
                                String username = _usernameController.text;
                                String password = _passwordController.text;
                                // You can add your sign up logic here
                                print(
                                  'Username: $username, Password: $password',
                                );

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyHomePage(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:
                                Colors.black, // Change button color here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigate to sign up page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => google.com()),
                      );
                    },
                    icon: Icon(Icons.g_mobiledata,color: Colors.white,size: 60,),
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => facebook.com()),
                      );
                    },
                    icon: Icon(Icons.facebook,color: Colors.white,size: 40,),
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tictok.com()),
                      );
                    },
                    icon: Icon(Icons.tiktok,color: Colors.white,size: 40,),
                  ),
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
