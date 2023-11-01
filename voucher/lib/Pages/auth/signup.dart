import 'package:flutter/material.dart';
import 'package:voucher/Pages/auth/SignupPages/index.dart';

import 'login.dart';


class Signup extends StatefulWidget {
  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {

  // Define a TextEditingController to control the text input.
  final TextEditingController _emailTextInput = TextEditingController();
  final TextEditingController _passwordTextInput = TextEditingController();
  bool isChecked = false; // Initial checkbox state

  int _currentPage = 1; // Initialize with the initial page index
  Widget _currentBody = BasePage(); // Initialize with the initial body widget

  // Function to change the current body based on the page index
  void changePage(int pageIndex) {
    setState(() {
      _currentPage = pageIndex;
      switch (pageIndex) {
        case 0:
          Login();
          break;
        case 1:
          _currentBody = BasePage();
          break;
        case 2:
          _currentBody = FirstPage();
          break;
        case 3:
          _currentBody = SecondPage();
          break;
        case 4:
          _currentBody = ThirdPage();
          break;
      // Add more cases for additional pages
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // title: "asd",
      ),

      body:Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
        child:Column(
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: TextButton(
              onPressed: () {
                changePage(_currentPage-1);
                },
              child: Row(
                  children: [
                    Image.asset('images/chevron 1.png', height: 30, width: 30),
                    const Text(
                      'Go Back',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ]
              ),
            ),


          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child:RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'ETM',
                      style: TextStyle(
                        color: Color(0xFF003554), // Set custom color #051923 for "ETM"
                        fontWeight: FontWeight.bold, // Make "ETM" bold
                        fontSize: 26,
                      ),
                    ),
                    TextSpan(
                      text: ' VOUCHER SYSTEM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign up to continue your account',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.7), // Text color with opacity
                  fontSize: 15,
                ),
              ),
            ),
          ),

          _currentBody,

          Padding(
            padding: const EdgeInsets.only(top:20,bottom:20),
            child: Container (
              width: double.infinity, // Expand to full width
              height: 46,
              child: ElevatedButton(
                onPressed: () {
                  changePage(_currentPage+1);
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF003554), // Set the custom color here
                ),
                child: const Text(
                  'Proceed',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20),
            child: Container (
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5), // Text color with opacity
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20),
            child: Container(
              width: double.infinity, // Expand to full width
              height: 46,
              child: ElevatedButton(
                onPressed: () {
                  Login();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white), // White background
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Color(0xFF003554), // Border color #003554
                    ),
                  ),
                ),
                child: const Text(
                  'Sign in now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003554), // Text color #003554
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(), // Empty spacer to push the content to the bottom
          ),
        ],
        ),
      ),
    );
  }
}

