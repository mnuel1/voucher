
import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPage createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {

  // Define a TextEditingController to control the text input.

  final TextEditingController _addressTextInput = TextEditingController();
  final TextEditingController _zipCodeTextInput = TextEditingController();
  final TextEditingController _foreignAddTextInput = TextEditingController();

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
                    controller: _addressTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'Your registered address here ',
                      labelText: 'Registered Address',
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
                    controller: _zipCodeTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'Your zip code here',
                      labelText: 'Zip code',
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
                    controller: _foreignAddTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: 'your foreign address here',
                      labelText: 'Foreign address',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
          const Padding(
                  padding: EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                  child: Row (
                    children: [
                      Icon(Icons.warning, color: Colors.grey), // Insert the warning icon
                      SizedBox(width: 5,),
                      Text(
                        'Only if you have foreign Address',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        softWrap: true, // Allow word wrap
                        maxLines: 2, // Adjust the number of lines as needed
                      )
                    ],
                  )
              ),
        ]
    );
  }

}