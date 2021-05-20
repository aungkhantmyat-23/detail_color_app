import 'package:flutter/material.dart';
import 'package:flutter_ex5/component/body.dart';
import 'package:flutter_ex5/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[50],
      leading: IconButton(
          icon: Icon(Icons.arrow_back,color:kTextColor,),
          onPressed: (){}),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search,color: kTextColor,),
            onPressed: (){}),
        IconButton(
            icon: Icon(Icons.shopping_cart,color: kTextColor,),
            onPressed: (){}),
        SizedBox(
          width: kDefaultPaddin/2,
        )
      ],
    );
  }
}
