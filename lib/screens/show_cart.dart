import 'package:flutter/material.dart';
import 'package:systemfood/model/cart_model.dart';
import 'package:systemfood/utility/my_style.dart';
import 'package:systemfood/utility/sqlite_helper.dart';

class ShowCart extends StatefulWidget {
  @override
  _ShowCartState createState() => _ShowCartState();
}

class _ShowCartState extends State<ShowCart> {
  List<CartModel> cartModels = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readSQLite();
  }

  Future<Null> readSQLite() async {
    var object = await SQLiteHelper().readAllDataFromSQLite();
    setState(() {
      cartModels = object;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตะกร้าของฉัน'),
      ),
      body: cartModels.length == 0 ? MyStyle().showProgress() : buildListFood(),
    );
  }

  Widget buildListFood() => ListView.builder(itemCount: cartModels.length,
        itemBuilder: (context, index) => Text(cartModels[index].nameFood),
      );
}
