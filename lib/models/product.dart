import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final List<String> images;
  final double price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/nike_shoes.png",
    ],
    title: "Nike Sport Shoes",
    price: 9500,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/dress.png",
    ],
    title: "Pretty Women Dress-Gown",
    price: 5000,
    // isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/headphones.png",
    ],
    title: "Blutooth Headphones",
    price: 4250,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/tshirt.png",
    ],
    title: "Nike Sport White - Man Pant",
    price: 5999,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/dslr_camera.png",
    ],

    title: "Nikon-DSLR Camera",
    price: 22999,
    isFavourite: true,
    isPopular: true,
  ),

];
