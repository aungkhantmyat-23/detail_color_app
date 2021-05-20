import 'package:flutter/material.dart';
import 'package:flutter_ex5/Models/product.dart';
import 'package:flutter_ex5/constants.dart';


class ItemCard extends StatelessWidget {

  final Product product;
  final Function press;

  const ItemCard({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all( kDefaultPaddin),
              width: 190,
              height: 180,
              decoration: BoxDecoration(
                color:Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
            child: Text(
              product.title,
              style: TextStyle(
                  color: kTextLightColor
              ),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
