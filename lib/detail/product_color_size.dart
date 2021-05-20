import 'package:flutter/material.dart';
import 'package:flutter_ex5/Models/product.dart';
import 'package:flutter_ex5/constants.dart';

class ProductColorSize extends StatelessWidget {
  final Product product;

  const ProductColorSize({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Color",style: TextStyle(fontSize: 17),),
                Container(
                  margin: EdgeInsets.only(
                      top: kDefaultPaddin/4
                  ),
                  padding: EdgeInsets.all(2.5),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: product.color,
                    ),
                  ),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: product.color,
                          shape: BoxShape.circle
                      )
                  ),
                )
              ],
            ),
            SizedBox(
              width: 150,
            ),

            RichText(
                text:TextSpan(
                    style: TextStyle(color: kTextLightColor),
                    children: [
                      TextSpan(
                        text: "Size\n",
                        style: TextStyle(fontSize: 17,color: kTextColor),
                      ),
                      TextSpan(
                          text: "${product.size } US",
                          style: Theme.of(context).textTheme.headline5
                      )
                    ]
                )
            ),
          ],
        ),
      ],
    );
  }
}
