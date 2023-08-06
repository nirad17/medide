import 'package:flutter/material.dart';
import 'package:medide/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  const MyAppBar({Key? key, this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF6F6FA),
      title: Image.asset(
        "assets/images/logo_medide.png",
        fit: BoxFit.contain,
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
            Icons.chat_bubble,
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
