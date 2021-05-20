import 'package:flutter/material.dart';
import 'package:flutter_ex5/Models/product.dart';
import 'package:flutter_ex5/constants.dart';
import 'dart:math' as math;


class ProductNameImg extends StatelessWidget {
  final Product product;

  const ProductNameImg({Key key,@required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Sneaker",
            style: TextStyle(color: Colors.white,),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 110,
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "Price\n"),
                        TextSpan(text:
                        "\$${product.price}",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(
                            color: Colors.white,
                          ),
                        )
                      ]
                  )
              ),
              Expanded(
                  child: Transform.rotate(
                      angle: -math.pi/6,
                      child: Image.asset(product.image,height: 125,)))
            ],
          )
        ],
      ),
    );
  }
}
