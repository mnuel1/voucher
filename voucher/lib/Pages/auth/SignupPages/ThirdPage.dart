
import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  @override
  _ThirdPage createState() => _ThirdPage();
}

class _ThirdPage extends State<ThirdPage> {

  // Define a TextEditingController to control the text input.

  final TextEditingController _emailTextInput = TextEditingController();
  final TextEditingController _pass1TextInput = TextEditingController();
  final TextEditingController _pass2TextInput = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Column(
        children: <Widget>[
          // content
          Padding(
                padding: const EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _emailTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'Your email address here ',
                      labelText: 'Email Address',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
          Padding(
                padding: const EdgeInsets.only(bottom: 5), // This adds 20 pixels of spacing
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _pass1TextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'Your password here',
                      labelText: 'Password',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
          const Padding(
                  padding: EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                  child: Row (
                    children: [
                      Icon(Icons.warning, color: Colors.grey),// Insert the warning icon
                      SizedBox(width: 5,),
                      Flexible(
                        child: Text(
                          'Should consist of a mix of 8 characters, including digits, special characters, and letters.',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          softWrap: true, // Allow word wrap
                          maxLines: 2, // Adjust the number of lines as needed
                        ),
                      )
                    ],
                  )
              ),
          Padding(
                padding: const EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _pass2TextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'your password here',
                      labelText: 'Confirm Password',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
        ]
    );
  }

}