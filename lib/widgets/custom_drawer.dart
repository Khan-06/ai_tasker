import 'package:ai_tasker_simple/pages/language_selection_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
              CusListTile(
                title: "Language",
                leadingIcon: 'assets/icons/language_icon.png',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(LanguageSelectionPage.routeName);
                },
              ),
              const SizedBox(height: 8,),
              CusListTile(
                title: "Share",
                leadingIcon: 'assets/icons/Share_icon.png',
                onTap: () {}, // Add empty function here
              ),
              const SizedBox(height: 8,),
              CusListTile(
                title: "Favorite",
                leadingIcon: 'assets/icons/Favorite_icon.png',
                onTap: () {}, // Add empty function here
              ),
              const SizedBox(height: 8,),
              CusListTile(
                title: "Privacy Policy",
                leadingIcon: 'assets/icons/privacy_icon.png',
                onTap: () {}, // Add empty function here
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/icons/premium_banner.png'),
                //SvgPicture.asset('assets/icons/premium_banner.svg'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CusListTile extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final VoidCallback onTap;

  const CusListTile({
    required this.title,
    required this.leadingIcon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: const Color.fromRGBO(50, 51, 53, 1),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Image.asset(leadingIcon),
          trailing: TextButton(
            onPressed: onTap,
            child: const Icon(Icons.arrow_forward_ios_outlined, size: 16),
          ),
        ),
      ),
    );
  }
}