
import 'package:flutter/material.dart';

import 'package:contador/src/providers/provider.dart';
import 'package:provider/provider.dart';


class FirstPage extends StatefulWidget {


  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {


  @override
  Widget build(BuildContext context) {

      final incrementar = Provider.of<ProviderCounter>(context);

      final contador = Provider.of<ProviderCounter>(context).getCounter;



    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
        actions: <Widget>[
          InkWell(
          onTap: (){

          },
          child: Icon(Icons.navigate_next)
          ),
        ],
      ),
      body: Container(
       child: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Tap +1 or -1'),
              Text( '$contador' , style: Theme.of(context).textTheme.display4),
           ]
         )
       ),
    ),
    floatingActionButton:  Column(
      mainAxisSize: MainAxisSize.min,
      children: 
      [
        FloatingActionButton(
          child: Icon(Icons.exposure_plus_1),
          onPressed: (){
            setState(() {
              incrementar.incrementCounter();
            });
          }
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_neg_1),
          onPressed: (){
            setState(() {
              incrementar.decrementCounter();
            });
          }
        ),
      ]
    ),

    );
  }

}