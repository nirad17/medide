import 'package:flutter/material.dart';
import 'package:medide/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  MyAppBar({this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/logo_medide.png", fit: BoxFit.fitHeight),
      ),
      leading: leading!=null ? leading : IconButton(icon: Icon(Icons.arrow_back, color: kMainPrimaryColor,size: 29,),onPressed: () {
        Navigator.pop(context);
      },),
      actions: [
        IconButton(icon: Icon(Icons.chat, color: kMainPrimaryColor,size: 29,),onPressed: () {
          Navigator.pushNamed(context, "/profile");
        },),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
