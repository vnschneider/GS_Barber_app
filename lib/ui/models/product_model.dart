import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final double price;
  final String desc;
  final Color color;

  ProductModel({
    this.name,
    this.price,
    this.desc,
    this.color,
  });

  static List<ProductModel> list = [
    ProductModel(
      name: "Minoxidil",
      price: 70.0,
      desc:
          "Fármaco capaz de reduzir a pressão arterial por promover vasodilatação potente e de longa duração, promovendo um maior crescimento capilar.",
      color: Colors.indigo[900],
    ),
    ProductModel(
      name: "Shampoo Anti Caspa",
      price: 50.0,
      desc: "Recomendado para o tratamento de caspas.",
      color: Colors.indigo[900],
    ),
  ];
}
