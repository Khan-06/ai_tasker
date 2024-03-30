import 'package:flutter/material.dart';
import '../providers/language_provider.dart';

class LanguageSelectionPage extends StatefulWidget {
  static const String routeName = '/LanguageSelectionScreen';
  const LanguageSelectionPage({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  static List<Language> languages = [
    Language(languageName: 'English', iconPath: 'assets/language_icons/english.png'),
    Language(languageName: 'Spanish', iconPath: 'assets/language_icons/espanol.png'),
    Language(languageName: 'Bahasa Indonesia', iconPath: 'assets/language_icons/bahasa indonesia.png'),
    Language(languageName: 'Turkce', iconPath: 'assets/language_icons/turkce.png'),
    Language(languageName: 'Pyccknn', iconPath: 'assets/language_icons/Pyccknn.png'),
    Language(languageName: 'Deutsch', iconPath: 'assets/language_icons/deutsch.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language'),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return LanguageTile(
            language: languages[index],
            onSelect: (selectedLanguage) {
              setState(() {
                selectedLanguage.isSelected = !selectedLanguage.isSelected;
              });
            },
          );
        },
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  final Language language;
  final Function(Language) onSelect;

  const LanguageTile({
    required this.language,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () => onSelect(language),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(language.iconPath),
              backgroundColor: Colors.transparent,
            ),
            title: Text(language.languageName),
            trailing: GestureDetector(
              onTap: () => onSelect(language),
              child: Card(
                elevation: 3,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: language.isSelected ? Colors.blue : Colors.transparent,
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}