import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex5/Models/product.dart';
import 'package:flutter_ex5/component/category.dart';
import 'package:flutter_ex5/component/item_card.dart';
import 'package:flutter_ex5/constants.dart';
import 'package:flutter_ex5/detail/detail_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Column(
      
    crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(

            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "Men",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context,index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>DetailPage(
                            product: products[index],
                          )
                        )
                    ),
                  ),
              ),
            )
        )

      ],
    );

  }
}


