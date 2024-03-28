import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const CusListTile(
              title: "Language",
              leadingIcon: 'assets/icons/language_icon.png',
              ),
          const SizedBox(height: 8,),
          const CusListTile(
              title: "Share",
              leadingIcon: 'assets/icons/share_icon.png',
              ),
          const SizedBox(height: 8,),
          const CusListTile(
              title: "Favorite",
              leadingIcon: 'assets/icons/Favorite_icon.png',
              ),
          const SizedBox(height: 8,),
          const CusListTile(
              title: "Privacy Policy",
              leadingIcon: 'assets/icons/privacy_icon.png',
              ),
        ],
      ),
    );
  }
}

class CusListTile extends StatelessWidget {
  const CusListTile({
    required this.title,
    required this.leadingIcon,
    Key? key,
  }) : super(key: key);

  final String title;
  final String leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: const Color.fromRGBO(50, 51, 53, 1),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Image.asset(leadingIcon),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16),
        ),
      ),
    );
  }
}

// mage.asset('assets/icons/language_icon.png'),
// trailing: const Icon(Icons.arrow_forward_ios_rounded)
