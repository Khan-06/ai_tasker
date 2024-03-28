import 'package:flutter/material.dart';

class LanguageSelectionPage extends StatefulWidget {
  const LanguageSelectionPage({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  @override
  Widget build(BuildContext context) {
    List<Language> languages = [
      Language(languageName: 'English', iconPath: 'assets/language_icons/english.png'),
      Language(languageName: 'Spanish', iconPath: 'assets/language_icons/espanol.png'),
      Language(languageName: 'Bahasa Indonesia', iconPath: 'assets/language_icons/bahasa indonesia.png'),
      Language(languageName: 'Turkce', iconPath: 'assets/language_icons/turkce.png'),
      Language(languageName: 'Pyccknn', iconPath: 'assets/language_icons/Pyccknn.png'),
      Language(languageName: 'Deutsch', iconPath: 'assets/language_icons/deutsch.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language'),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final language = languages[index];
          return LanguageTile(
            countryFlag: language.iconPath,
            languageName: language.languageName,
            isSelected: false,
            onSelect: (isSelected) => print(isSelected),
          );
        },
      ),
    );
  }
}

class Language {
  final String languageName;
  final String iconPath;

  Language({required this.languageName, required this.iconPath});
}

class LanguageTile extends StatefulWidget {
  final String countryFlag;
  final String languageName;
  final bool isSelected;
  final Function(bool) onSelect;

  const LanguageTile({
    required this.countryFlag,
    required this.languageName,
    required this.isSelected,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  _LanguageTileState createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.countryFlag),
          backgroundColor: Colors.transparent,
        ),
        title: Text(widget.languageName),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              widget.onSelect(!widget.isSelected); // Toggle isSelected state
            });
          },
          child: Card(
            elevation: 3,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.isSelected ? Colors.blue : Colors.transparent,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            widget.onSelect(!widget.isSelected); // Toggle isSelected state
          });
        },
      ),
    );
  }
}
