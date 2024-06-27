import 'package:flutter/material.dart';
import 'package:flutter_practice/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class theme_change extends StatefulWidget {
  const theme_change({super.key});

  @override
  State<theme_change> createState() => _theme_changerState();
}

class _theme_changerState extends State<theme_change> {
  @override
  Widget build(BuildContext context) {
    final theme_changer = Provider.of<theme_provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme_Changer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Theme"),
            value: ThemeMode.light,
            groupValue: theme_changer.thememode,
            onChanged: theme_changer.settheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Theme"),
            value: ThemeMode.dark,
            groupValue: theme_changer.thememode,
            onChanged: theme_changer.settheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Theme"),
            value: ThemeMode.system,
            groupValue: theme_changer.thememode,
            onChanged: theme_changer.settheme,
          ),
          Icon(Icons.favorite)
        ],
      ),
    );
  }
}
