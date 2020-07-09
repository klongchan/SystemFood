import 'package:flutter/material.dart';
import 'package:systemfood/screens/home.dart';
import 'package:systemfood/main.dart';


// void main(){
// runApp(MyApp());
// }
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primarySwatch: Colors.green),
      title: 'Wan Food',
      home: Home(),
    );
  }
}
