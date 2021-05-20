import 'package:flutter/material.dart';

class Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;

  Product({
      this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color,
  });
}

List <Product> products=[
  Product(
    image:"assets/images/kindpng_7589854.png",
    title:"Offwhite x Nike SB Dunk ",
    description:dummyText,
    price: 90,
    size:43,
    id:1,
    color:Color(0xFFC62828),
  ),
  Product(
    image:"assets/images/kindpng_5550771.png",
    title:"Nike AirMax 270",
    description:dummyText,
    price: 120,
    size:43,
    id:2,
    color:Colors.deepOrange,
  ),
  Product(
    image:"assets/images/kindpng_2129375.png",
    title:"Nike AirForce 1  ",
    description:dummyText,
    price: 280,
    size:43,
    id:1,
    color:Colors.grey[800],
  ),
  Product(
    image:"assets/images/kindpng_3577832.png",
    title:"Nike Vapormax",
    description:dummyText,
    price: 120,
    size:43,
    id:2,
    color:Colors.grey[800],
  ),
  Product(
    image:"assets/images/kindpng_119839.png",
    title:"Nike SB Dunk",
    description:dummyText,
    price: 200,
    size:43,
    id:3,
    color:Colors.deepPurple,
  ),
  Product(
    image:"assets/images/kindpng_5548916.png",
    title:"Nike HyperAdapt",
    description:dummyText,
    price: 500,
    size:43,
    id:4,
    color:Colors.grey[800],
  ),

];
String dummyText = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis obcaecati autem nisi cupiditate harum sed laudantium cum at provident accusantium earum perferendis sapiente facere, id eaque iusto architecto illo magni?";