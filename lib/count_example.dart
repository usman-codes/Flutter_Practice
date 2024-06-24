import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/provider/count_provider.dart';
import 'package:provider/provider.dart';

class exmple_count extends StatefulWidget {
  const exmple_count({super.key});

  @override
  State<exmple_count> createState() => _exmple_countState();
}

class _exmple_countState extends State<exmple_count> {
  @override
  Widget build(BuildContext context) {
    print("build");
    final countprovider = Provider.of<Countprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Count_Example"),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        child: Center(
            child: Consumer<Countprovider>(builder: (context, value, child) {
          print("build only ");

          return Text(
            countprovider.count.toString(),
            style: TextStyle(fontSize: 40),
          );
        })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
