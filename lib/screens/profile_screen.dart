import 'package:flutter/material.dart';
import 'package:medide/components/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Text("Profile"),
    );
  }
}
