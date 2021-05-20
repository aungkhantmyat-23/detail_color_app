import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex5/Models/product.dart';
import 'package:flutter_ex5/constants.dart';
import 'package:flutter_ex5/detail/addtocart.dart';
import 'package:flutter_ex5/detail/cartcounter.dart';
import 'package:flutter_ex5/detail/product_color_size.dart';
import 'dart:math' as math;

import 'package:flutter_ex5/detail/product_name_img.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ProductColorSize(product: product,),
                      SizedBox(height: kDefaultPaddin/2,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPaddin,
                        ),
                        child: Text(
                            product.description,
                            style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(height: kDefaultPaddin/2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CartCounter(),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF6464),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.favorite,color: Colors.white,),
                          )
                        ],
                      ),
                      SizedBox(height: 60,),
                      AddToCart(product: product,)
                    ],
                  ),
                ),

                ProductNameImg(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
