import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


 int _cuenta = 0;


  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SecondPage')
      ),
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            Text('Tap +2 or -2'),
            SizedBox(height: 10.0),
            Text('$_cuenta', style: Theme.of(context).textTheme.headline1),
            
          ],
        )
       ),
     bottomNavigationBar: bottomBar(),
    );
  }

  Widget bottomBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          flatboton( () {
            setState(() {
              
              _cuenta+= 2;
            });
          }, '+2'),
          flatboton(() {
           setState(() {

              _cuenta-= 2;

           });
          } , '-2' )
        ]
      ),
    );
  }

  Widget flatboton( Function loquis , String suma ) {
    return FlatButton(
              onPressed: loquis, 
              child: Container(
                 margin: EdgeInsets.all(10.0),
                 padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 50.0),
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Colors.amber,
                        width:1
                      )
                    ),
                child: Text(
                 suma ,
                 style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber
                   ),),
              ),
              );

  }

 

}