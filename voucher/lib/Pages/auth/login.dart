import 'package:flutter/material.dart';
import 'package:voucher/Pages/auth/signup.dart';



class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {

  // Define a TextEditingController to control the text input.
  final TextEditingController _emailTextInput = TextEditingController();
  final TextEditingController _passwordTextInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // title: "asd",
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the Row horizontally
            children: <Widget>[
              // Add the "Welcome to ETM Voucher System" text with custom color for "ETM"
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: RichText(
                  textAlign: TextAlign.center, // Align text to the center
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'WELCOME TO ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                        ),
                      ),
                      TextSpan(
                        text: 'ETM',
                        style: TextStyle(
                          color: Color(0xFF003554), // Set custom color #051923 for "ETM"
                          fontWeight: FontWeight.bold, // Make "ETM" bold
                          fontSize: 32,
                        ),
                      ),
                      TextSpan(
                        text: ' VOUCHER SYSTEM',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                child:Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _emailTextInput,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'juandelacruz@gmail.com',
                      labelText: 'Email',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2), // This adds 20 pixels of spacing
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _passwordTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'your password here...',
                      labelText: 'Password',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
              ForgetPassword(),
              // const Expanded(
              //   child: SizedBox(), // Empty spacer to push the content to the bottom
              // ),
              Padding(
                padding: const EdgeInsets.only(top:20,bottom:20),
                child: Container (
                  width: double.infinity, // Expand to full width
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle sign in here
                      },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF003554), // Set the custom color here
                    ),
                    child: const Text(
                      'Sign In',
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
                          "Don't have an account yet",
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
                      Signup();
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
                      'Sign Up',
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
              // Text(
              //   'You entered: ${_passwordTextInput.text}',
              //   style: const TextStyle(fontSize: 16.0),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight, // Align the text to the right
      child: TextButton(
        onPressed: () {
          // Add your "Forgot Password" functionality here
          // This can include showing a dialog or navigating to a reset password screen.
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            color: Color(0xFF003554), // Customize the text color
            fontWeight: FontWeight.bold, // Set font weight here
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
