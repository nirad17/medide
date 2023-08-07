import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medide/components/appbar.dart';
import 'package:medide/components/text_box.dart';
import 'package:medide/constants.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  File? _pickedImage;
  String path = "";
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _pickedImage = File(pickedImage.path);
        path = pickedImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Stack(
                            children: [
                              _pickedImage != null
                                  ? CircleAvatar(
                                      radius: 36,
                                      backgroundImage: AssetImage(path))
                                  : const CircleAvatar(
                                      radius: 36,
                                      backgroundImage: NetworkImage(
                                          "https://media.idownloadblog.com/wp-content/uploads/2017/03/Twitter-new-2017-avatar-001.png"),
                                    ),
                              Positioned(
                                  bottom: -5,
                                  left: 41,
                                  child: IconButton(
                                    onPressed: () {
                                      _pickImage();
                                      Image.file(
                                        _pickedImage!,
                                        height: 40,
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.add_circle,
                                      color: kMainPrimaryColor,
                                      size: 20,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Flexible(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, ${'Nirad'}\n${'user1@gmail.com'}\n${'9876543210'}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Name",
                  style: kFormLabelTextStyle,
                ),
                EditTextBox(),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Email",
                  style: kFormLabelTextStyle,
                ),
                EditTextBox(),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Phone Number",
                  style: kFormLabelTextStyle,
                ),
                EditTextBox(),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Address",
                  style: kFormLabelTextStyle,
                ),
                EditTextBox(),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: const Text(
                    "Appointment History",
                    style: kFormLabelTextStyle,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/appointment");
                      },
                      icon: const Icon(Icons.arrow_forward_ios)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: const Text(
                    "Payment History",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/payments");
                      },
                      icon: const Icon(Icons.arrow_forward_ios)),
                ),
              ],
            ),
          ),
        ));
  }
}
