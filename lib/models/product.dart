import 'package:flutter/material.dart';

class Product {

  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/nike_shoes.png",
      "assets/images/nike_shoes1.png",
      "assets/images/nike_shoes2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport Shoes",
    price: 9500,
    rating: 4.7,
    description: "The Nike Epic React Flyknit 2 takes a step up from its predecessor with smooth, lightweight performance and a bold look. An updated Flyknit upper conforms to your foot with a minimal, supportive design. Underfoot, durable Nike React technology defies the odds by being both soft and responsive, for comfort that lasts as long as you can run.",
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 2,
    images: [
      "assets/images/dress.png",
    ],
    colors: [
      Colors.blueAccent.shade200,
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Pretty Women Dress-Gown",
    price: 5000,
    // isFavourite: true,
    rating: 4.1,
    description: "Luxurious and valid long burgundy bridesmaid dresses Prom Dress, Six colors available,Navy blue, White, Purple, Burgundy, Dark Green, Black, Dusty Pink.",
    isPopular: true,
  ),

  Product(
    id: 3,
    images: [
      "assets/images/headphones.png",
    ],
    colors: [
      Colors.blue,
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Blutooth Headphones",
    price: 4250,
    rating: 4.5,
    description: "Rockerz 510 promises a battery back up of upto 20 hours and a standyby time of 250 hours.The foam inside the ear pads adapts to your ears with just the right pressure ensuring great comfort and also delivering authentic sound.",
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 4,
    images: [
      "assets/images/tshirt.png",
    ],
    colors: [
      Colors.deepOrange,
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport Man T-shirt",
    price: 5999,
    rating: 4.0,
    description: "Premium Super combed cotton fabric is soft & comfortable for all day wear due to its good absorbency & breathability. Can be worn as Loungewear,comfortwear & Casual wear",
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 5,
    images: [
      "assets/images/dslr_camera.png",
      "assets/images/dslr_camera1.png",
      "assets/images/dslr_camera2.png",
    ],
    colors: [
      Colors.black,
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nikon-DSLR Camera",
    price: 22999,
    rating: 4.6,
    description: "20.9MP DX-Format CMOS Sensor, SnapBridge Bluetooth and Wi-Fi. 4K UHD Video Recording at 30 fps. Multi-CAM 3500FX II 51-Point AF System. Native ISO 51200, Expanded ISO 1,640,000",
    isFavourite: true,
    isPopular: true,
  ),

];
