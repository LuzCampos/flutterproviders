import 'package:flutter/material.dart';

import 'package:contador/src/pages/first_page.dart';
import 'package:contador/src/pages/second_page.dart';
import 'package:provider/provider.dart';
import 'package:contador/src/providers/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        
        create: (context) => ProviderCounter(),
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'first',
        routes: {
          'first' : (BuildContext context) => FirstPage(),
          'second': (BuildContext context) => SecondPage(),

        },
      ),
    );
  }
}

