import 'package:flutter/material.dart';
import 'package:flutter_practice/count_example.dart';
import 'package:flutter_practice/favourite_app.dart';
import 'package:flutter_practice/muti_example.dart';
import 'package:flutter_practice/provider/count_provider.dart';
import 'package:flutter_practice/provider/favour_provider.dart';
import 'package:flutter_practice/provider/multi_provider.dart';
import 'package:flutter_practice/provider/theme_provider.dart';
import 'package:flutter_practice/theme_change.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Countprovider()),
          ChangeNotifierProvider(create: (_) => multiProvider()),
          ChangeNotifierProvider(create: (_) => favour_provider()),
          ChangeNotifierProvider(create: (_) => theme_provider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themechanger = Provider.of<theme_provider>(context);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              themeMode: themechanger.thememode,
              theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.blue,
                  useMaterial3: true,
                  appBarTheme: AppBarTheme(color: Colors.blue),
                  iconTheme: IconThemeData(color: Colors.blue)),
              darkTheme: ThemeData(
                  useMaterial3: true,
                  brightness: Brightness.dark,
                  primarySwatch: Colors.blue,
                  appBarTheme: AppBarTheme(color: Colors.red),
                  iconTheme: IconThemeData(color: Colors.red)),
              home: exmple_count());
        }));
  }
}
