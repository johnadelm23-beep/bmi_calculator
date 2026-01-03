import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.withLeading});
  final bool withLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
      title: Text(
        "BMI Calculator",
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: withLeading
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
