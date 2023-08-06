import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medide/components/appbar.dart';
import 'package:medide/components/text_box.dart';
import 'package:medide/constants.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  Uint8List? _img;

  ProfileScreen({super.key});
  // void selectImage() async {
  //   Uint8List img = await pickImage(ImageSource.gallery);
  //   setState(() {
  //     _img = img;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          _img != null
                              ? CircleAvatar(
                                  radius: 72,
                                  backgroundImage: MemoryImage(_img!))
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
                                  // selectImage();
                                },
                                icon: const Icon(
                                  Icons.add_circle,
                                  color: kMainPrimaryColor,
                                  size: 20,
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Column(
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
                      )
                    ],
                  ),
                ),
              ),
              
              const SizedBox(
                height: 15,
              ),
              const Text("Name"),
              const SizedBox(
                height: 15,
              ),
              EditTextBox(),
              const SizedBox(
                height: 15,
              ),
              const Text("Email"),
              const SizedBox(
                height: 15,
              ),
              const TextField(),
              const SizedBox(
                height: 15,
              ),
              const Text("Phone Number"),
              const SizedBox(
                height: 15,
              ),
              const TextField(),
              const SizedBox(
                height: 15,
              ),
              const Text("Address"),
              const SizedBox(
                height: 15,
              ),
              const TextField(),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                title: const Text("Appointment History"),
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
                title: const Text("Payment History"),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/payments");
                    },
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
            ],
          ),
        ));
  }
}
