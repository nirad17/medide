import 'package:flutter/material.dart';
import 'package:medide/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  const MyAppBar({super.key, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF6F6FA),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Image.asset("assets/images/logo_medide.png", fit: BoxFit.fitHeight),
      ),
      leading: leading ??
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: kMainPrimaryColor,
              size: 29,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.chat,
            color: kMainPrimaryColor,
            size: 29,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/profile");
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
