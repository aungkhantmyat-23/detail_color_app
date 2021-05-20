import 'package:flutter/material.dart';
import 'package:flutter_ex5/Models/product.dart';
import 'package:flutter_ex5/constants.dart';
import 'package:flutter_ex5/detail/body.dart';



class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }
  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back,color:Colors.white ,),
          onPressed: () => Navigator.pop(context)
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){},
        ),
        SizedBox(
          width: kDefaultPaddin/2,
        ),

      ],
    );
  }
}
