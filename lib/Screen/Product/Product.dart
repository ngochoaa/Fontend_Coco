import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
     required this.id,
     required this.image,
     required this.title,
     required this.price,
     required this.description,
     required this.size,
     required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Trà Sữa Michio",
      price: 29000,
      size: 12,
      description: dummyText,
      image: "assets/image/trasuamichio.jpg",
      color: Color.fromARGB(255, 232, 228, 228)),
  Product(
      id: 2,
      title: "Trà Sữa Michio",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/image/trasuamichio.jpg",
      color: Color.fromARGB(255, 232, 228, 228)),
  Product(
      id: 3,
      title: "Trà Sữa Michio",
      price: 29000,
      size: 10,
      description: dummyText,
      image: "assets/image/trasuamichio.jpg",
      color: Color.fromARGB(255, 232, 228, 228)),
  Product(
      id: 4,
      title: "Trà Sữa Michio",
      price: 29000,
      size: 11,
      description: dummyText,
      image: "assets/image/trasuamichio.jpg",
      color: Color.fromARGB(255, 232, 228, 228)),
  Product(
      id: 5,
      title: "Trà Sữa Michio",
      price: 29000,
      size: 12,
      description: dummyText,
      image: "assets/image/trasuamichio.jpg",
      color: Color.fromARGB(255, 232, 228, 228)),
  Product(
    id: 6,
    title: "Trà Sữa Michio",
    price: 29000,
    size: 12,
    description: dummyText,
    image: "assets/image/trasuamichio.jpg",
    color: Color.fromARGB(255, 232, 228, 228),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
