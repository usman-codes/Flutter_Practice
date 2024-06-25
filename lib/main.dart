import 'package:flutter/material.dart';
import 'package:flutter_practice/count_example.dart';
import 'package:flutter_practice/muti_example.dart';
import 'package:flutter_practice/provider/count_provider.dart';
import 'package:flutter_practice/provider/multi_provider.dart';
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
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MutiExample()),
    );
  }
}
