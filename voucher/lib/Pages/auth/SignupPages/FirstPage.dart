
import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {

  // Define a TextEditingController to control the text input.

  final TextEditingController _firstNameTextInput = TextEditingController();
  final TextEditingController _middleNameTextInput = TextEditingController();
  final TextEditingController _lastNameTextInput = TextEditingController();

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
                    controller: _firstNameTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'Your first name here ',
                      labelText: 'First Name',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
          Padding(
                padding: const EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _middleNameTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'Your middle name here',
                      labelText: 'Middle Name',
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
                    controller: _lastNameTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'your last name here',
                      labelText: 'Last Name',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
        ]
    );
  }

}