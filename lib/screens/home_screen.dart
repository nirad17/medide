import 'package:flutter/material.dart';
import 'package:medide/components/appbar.dart';
import 'package:medide/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: IconButton(
            icon:const Icon(Icons.person, color: kMainPrimaryColor,size: 29,),
            onPressed: () {
              Navigator.pushNamed(context, "/profile");
            }
        ),
      )
    );
  }
}
