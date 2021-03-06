//import 'package:eato/widgets/SearchWidget.dart';
import 'package:eato/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eato/widgets/widgets.dart';
import 'package:search_widget/search_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // bool _show = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        leading: Image.asset(
          'assets/images/logo1.png',
          fit: BoxFit.contain,
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          PopupOptionMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            const SizedBox(
              height: 32,
            ),
           // Text(
             // "${_selectedItem != null ? _selectedItem.username : ""
             //     "No item selected"}",),
            TopMenus(),
            //PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
    );
  }
}

