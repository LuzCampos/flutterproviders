import 'package:flutter/material.dart';

import 'package:contador/src/pages/second_page.dart';
import 'package:contador/src/providers/provider_count.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final accion = Provider.of<ProviderCounter>(context);

    final contador = Provider.of<ProviderCounter>(context).getCounter;

    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
        actions: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => SecondPage()),
                );
              },
              child: Icon(Icons.navigate_next,
              size: 40,
              )
              ),
          SizedBox(width: 5.0)
        ],
      ),
      body: Container(
        child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Tap +1 or -1'),
              Text('$contador', style: Theme.of(context).textTheme.display4),
            ])),
      ),
      floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
        FloatingActionButton(
            heroTag: 'btn1',
            child: Icon(Icons.exposure_plus_1),
            onPressed: () {
              setState(() {
                accion.incrementCounter();
              });
            }),
        SizedBox(height: 10.0),
        FloatingActionButton(
            heroTag: 'btn2',
            child: Icon(Icons.exposure_neg_1),
            onPressed: () {
              setState(() {
                accion.decrementCounter();
              });
            }),
      ]),
    );
  }
}
