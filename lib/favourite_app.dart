import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/provider/favour_provider.dart';
import 'package:flutter_practice/theme_change.dart';
import 'package:provider/provider.dart';

class favor extends StatefulWidget {
  const favor({super.key});

  @override
  State<favor> createState() => _favorState();
}

class _favorState extends State<favor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        backgroundColor: Colors.blueAccent,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => theme_change()));
            },
            child: Icon(Icons.forward),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Consumer<favour_provider>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (value.selecteditem.contains(index)) {
                          value.removeitem(index);
                        } else {
                          value.additem(index);
                        }
                      },
                      title: Text("Item" + index.toString()),
                      trailing: Icon(value.selecteditem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_sharp),
                    );
                  }),
            );
          })
        ],
      ),
    );
  }
}
