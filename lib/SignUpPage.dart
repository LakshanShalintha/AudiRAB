import 'package:flutter/material.dart';
import 'LogInPage.dart';
import 'MyHomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _rememberMe =
      false; // Boolean to track the state of the "Remember Me" checkbox
  bool _showPassword = false; // Boolean to track the state of showing password

  get tictok => tictok.com;
  get google => google.com;
  get facebook => facebook.com;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context)
            .unfocus(); // Dismiss the keyboard when tapping outside of text fields
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                          builder: (context) => LogInPage(),
                        ),
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
                  MaterialPageRoute(builder: (context) => LogInPage()),
                );
              },
              icon: Icon(Icons.login),
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
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align logo at the top
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  "Real Time Audio Book",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 330,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 3), // Spacing below logo
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                    color: Colors.blue, // Change color here
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                            SizedBox(height: 3.0),
                            TextField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    color: Colors.blue, // Change color here
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                            SizedBox(height: 3.0),
                            TextField(
                              controller: _passwordController,
                              obscureText:
                                  !_showPassword, // Toggle the obscure text based on the state of _showPassword
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.blue, // Change color here
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  child: Icon(
                                    _showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Remember Me',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(), // Add spacer to push Forgot Password text to the right
                                TextButton(
                                  onPressed: () {
                                    // Navigate to forgot password page
                                    // Replace ForgotPasswordPage with the desired page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyHomePage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: double
                                  .infinity, // Set button width to match parent
                              height: 50.0, // Adjust button height as needed
                              child: ElevatedButton(
                                onPressed: () {
                                  // Implement sign up functionality here
                                  String username = _usernameController.text;
                                  String email = _emailController.text;
                                  String password = _passwordController.text;
                                  // You can add your sign up logic here
                                  print(
                                    'Username: $username, Email: $email, Password: $password',
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
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 18.0,
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
                SizedBox(height: 20.0),
                Text(
                  '-------OR SignUP-------',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
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
                      icon: Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigate to login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => facebook.com()),
                        );
                      },
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigate to login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => tictok.com()),
                        );
                      },
                      icon: Icon(
                        Icons.tiktok,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
