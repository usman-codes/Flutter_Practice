import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/favourite_app.dart';
import 'package:flutter_practice/provider/multi_provider.dart';
import 'package:provider/provider.dart';

class MutiExample extends StatefulWidget {
  const MutiExample({super.key});

  @override
  State<MutiExample> createState() => _MutiExampleState();
}

class _MutiExampleState extends State<MutiExample> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi-Provider"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<multiProvider>(
            builder: (context, value, child) {
              print("build only ");

              return Slider(
                  min: 0,
                  max: 1.0,
                  value: value.value,
                  onChanged: (val) {
                    value.setvalue(val);
                  });
            },
          ),
          Consumer<multiProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(value.value),
                      ),
                      child: Center(child: Text("Contaoner 1")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      child: Center(child: Text("Contaoner 2")),
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Multi_Provider screen',
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => favor()));
            },
          ),
        ],
      ),
    );
  }
}
