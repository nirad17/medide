import 'package:flutter/material.dart';

class EditTextBox extends StatefulWidget {
  @override
  _EditTextBoxState createState() => _EditTextBoxState();
}

class _EditTextBoxState extends State<EditTextBox> {
  bool isEditing = false;
  TextEditingController _textEditingController =
      TextEditingController(text: 'Initial Value');

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: _textEditingController,
          enabled: isEditing,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter text...',
          ),
        ),
        Positioned(
          right: 0,
          child: IconButton(
            icon: Icon(isEditing ? Icons.done : Icons.edit),
            onPressed: () {
              setState(() {
                if (isEditing) {
                  // Save the edited text or perform necessary actions
                  // Here, we'll just toggle the edit mode
                  isEditing = false;
                } else {
                  isEditing = true;
                }
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
