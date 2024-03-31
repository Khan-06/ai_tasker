import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_drawer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Ai',
              style: TextStyle(
                  color: Colors.green, // Set green color for 'Ai'
                  fontWeight: FontWeight.bold, // Optional: Add bold style
                  fontSize: 20),
            ),
            TextSpan(
              text: ' Tasker',
              style: TextStyle(
                  color: Colors.white, // Set white color for 'Assistant'
                  fontWeight: FontWeight.bold, // Optional: Add bold style
                  fontSize: 20),
            ),
          ],
        ),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/Vector.svg', // Replace 'custom_icon.svg' with your SVG file path
          color: Colors.white, // Set icon color to white
          width: 15,
          height: 15,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: GestureDetector(
              onTap: () {
                print('pro_icon clicked');
              },
              child: Image.asset(
                'assets/icons/pro_image.png',
                height: 60,
                width: 60,
              )),
        )
      ],
    );
  }
}
