import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:systemfood/utility/my_style.dart';
import 'package:systemfood/utility/normal_dialog.dart';
import 'package:systemfood/utility/signout_process.dart';
import 'package:systemfood/widget/information_shop.dart';
import 'package:systemfood/widget/list_food_menu_shop.dart';
import 'package:systemfood/widget/order_list_shop.dart';

class MainShop extends StatefulWidget {
  @override
  _MainShopState createState() => _MainShopState();
}

class _MainShopState extends State<MainShop> {
  // Field
  Widget currentWidget = OrderListShop();

  String nameUser;

  @override
  void initState() {
    super.initState();
    aboutNotification();
    findUser();
  }

  Future<Null> aboutNotification() async {
    if (Platform.isAndroid) {
      print('aboutNoti Work Android');

      FirebaseMessaging firebaseMessaging = FirebaseMessaging();
      await firebaseMessaging.configure(
        onLaunch: (message) {
          print('Noti onLaunch');
        },
        onResume: (message) {
          print('Noti onResume ${message.toString()}');
          normalDialog(context, 'มีคนสั่งอาหารเข้ามา ค่ะ');
        },
        onMessage: (message) {
          print('Noti onMessage ${message.toString()}');
          normalDialog(context, 'มีคนสั่งอาหาร เข้ามาค่ะ');
        },
      );
    } else if (Platform.isIOS) {
      print('aboutNoti Work iOS');
    }
  }

  // String nameUser;

  // @override
  // void initState() {
  //   super.initState();
  //   findUser();
  // }

  Future<Null> findUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      nameUser = preferences.getString('Name');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(nameUser == null ? 'Main Shop' : '$nameUser หน้าร้าน login'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => signOutProcess(context),
          )
        ],
      ),
      drawer: showDrawer(),
      body: currentWidget,
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHard(),
            homeMenu(),
            foodMenu(),
            informationMenu(),
            signOutMenu(),
          ],
        ),
      );

  ListTile homeMenu() => ListTile(
        leading: Icon(Icons.home),
        title: Text('รายการอาหารที่ ลูกค้าสั่ง'),
        subtitle: Text('รายการอาหารที่ยังไม่ได้ ทำส่งลูกค้า'),
        onTap: () {
          setState(() {
            currentWidget = OrderListShop();
          });
          Navigator.pop(context);
        },
      );

  ListTile foodMenu() => ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('รายการอาหาร'),
        subtitle: Text('รายการอาหาร ของร้าน'),
        onTap: () {
          setState(() {
            currentWidget = ListFoodMenuShop();
          });
          Navigator.pop(context);
        },
      );

  ListTile informationMenu() => ListTile(
        leading: Icon(Icons.info),
        title: Text('รายละเอียด ของร้าน'),
        subtitle: Text('รายละเอียด ของร้าน พร้อม Edit'),
        onTap: () {
          setState(() {
            currentWidget = InformationShop();
          });
          Navigator.pop(context);
        },
      );

  ListTile signOutMenu() => ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text('Sign Out'),
        subtitle: Text('Sign Out และ กลับไป หน้าแรก'),
        onTap: () => signOutProcess(context),
      );
  UserAccountsDrawerHeader showHard() {
    return UserAccountsDrawerHeader(
      decoration: MyStyle().myBoxDecoration('store.jpg'),
      currentAccountPicture: MyStyle().showLogo(),
      accountName: Text(
        'Name Shop',
        style: TextStyle(color: MyStyle().darkColor),
      ),
      accountEmail: Text(
        'Login',
        style: TextStyle(color: MyStyle().primaryColor),
      ),
    );
  }
}
