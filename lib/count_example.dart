import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/muti_example.dart';
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
        backgroundColor: Colors.blueAccent,
        title: Text("Count_Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child:
                Consumer<Countprovider>(builder: (context, value, child) {
              print("build only ");

              return Text(
                countprovider.count.toString(),
                style: TextStyle(fontSize: 40),
              );
            })),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Multi_Provider screen',
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MutiExample()));
            },
          ),
        ],
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
