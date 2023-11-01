
import 'package:flutter/material.dart';


class BasePage extends StatefulWidget {
  @override
  _BasePage createState() => _BasePage();
}

class _BasePage extends State<BasePage> {

  // Define a TextEditingController to control the text input.
  final TextEditingController _emailTextInput = TextEditingController();
  final TextEditingController _tinTextInput = TextEditingController();
  bool isChecked = false; // Initial checkbox state

  @override
  Widget build(BuildContext context) {

    return Column(
        children: <Widget>[
          Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Container(
                        width: 40, // Make the checkbox bigger
                        height: 40, // Make the checkbox bigger
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0), // Slightly rounded edges
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: isChecked
                              ? const Icon(
                            Icons.check,
                            size: 30, // Icon size
                            color: Colors.black,
                          )
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20), // Small gap between children
                    Text(
                      'INDIVIDUAL: $isChecked',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ) ,
              ),
          Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Container(
                        width: 40, // Make the checkbox bigger
                        height: 40, // Make the checkbox bigger
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0), // Slightly rounded edges
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: isChecked
                              ? const Icon(
                            Icons.check,
                            size: 30, // Icon size
                            color: Colors.black,
                          )
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20), // Small gap between children
                    Text(
                      'CORPORATION: $isChecked',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ) ,
              ),
          Padding(
                padding: const EdgeInsets.only(bottom: 20), // This adds 20 pixels of spacing
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0), // Customize the border
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                  ),
                  child: TextField(
                    controller: _tinTextInput, // Controller for the text input
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0), // Add padding inside the box
                      hintText: '9 digit TIN',
                      labelText: 'TIN',
                      border: InputBorder.none, // Remove the default border of the TextField
                    ),
                  ),
                ),
              ),
        ]
    );

  }

}