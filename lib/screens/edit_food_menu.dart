import 'package:flutter/material.dart';
import 'package:systemfood/model/food_model.dart';
import 'package:systemfood/utility/my_constant.dart';

class EditFoodMenu extends StatefulWidget {
  final FoodModel foodModel;
  EditFoodMenu({Key key, this.foodModel}) : super(key: key);

  @override
  _EditFoodMenuState createState() => _EditFoodMenuState();
}

class _EditFoodMenuState extends State<EditFoodMenu> {
  FoodModel foodModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    foodModel = widget.foodModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        title: Text('ปรับปรุง เมนู ${foodModel.nameFood}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            nameFood(),
            groupImage(),
            priceFood(),
            detailFood(),
          ],
        ),
      ),
    );
  }

  Widget groupImage() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: null),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 300.0,
            height: 300,
            child: Image.network(
              '${MyConstant().domain}${foodModel.pathImage}',
              fit: BoxFit.cover,
            ),
          ),
          IconButton(icon: Icon(Icons.add_photo_alternate), onPressed: null),
        ],
      );

  Widget nameFood() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 300.0,
            child: TextFormField(
              initialValue: foodModel.nameFood,
              decoration: InputDecoration(
                labelText: 'ชื่อ เมนู อาหาร',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget priceFood() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 300.0,
            child: TextFormField(
              keyboardType: TextInputType.number,
              initialValue: foodModel.price,
              decoration: InputDecoration(
                labelText: 'ราคา อาหาร',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget detailFood() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 300.0,
            child: TextFormField(
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              initialValue: foodModel.detail,
              decoration: InputDecoration(
                labelText: 'รายละเอียด อาหาร',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );
}
