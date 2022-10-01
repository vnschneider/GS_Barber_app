import 'package:flutter/material.dart';

class BarbersModel {
  final String name;
  final double rate;
  final String desc;
  final Color color;
  final String imgPath;

  BarbersModel({
    this.name,
    this.rate,
    this.desc,
    this.color,
    this.imgPath,
  });

  static List<BarbersModel> list = [
    BarbersModel(
      name: "Gustavo Souza",
      rate: 2.0,
      desc: "Fundador e proprietário da GS Barber",
      color: Colors.indigo[900],
      imgPath: "assets/profilegs.jpg",
    ),
    BarbersModel(
      name: "Marcos Arthur",
      rate: 1.0,
      desc: "Recem contratado",
      color: Colors.indigo[900],
      imgPath: "assets/profilema.jpg",
    ),
    BarbersModel(
      name: "Barbeiro Newbie",
      rate: 5.0,
      desc: "Recem contratado",
      color: Colors.indigo[900],
      imgPath: "assets/logogs2.png",
    ),
  ];
}
