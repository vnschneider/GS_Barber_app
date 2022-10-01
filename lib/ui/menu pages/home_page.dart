import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gsbarber_app/ui/menu%20pages/barbers_page.dart';
import 'package:gsbarber_app/ui/menu%20pages/gsbarber_page.dart';
import 'package:gsbarber_app/ui/menu%20pages/newspaper_page.dart';
import 'package:gsbarber_app/ui/menu%20pages/profile_page.dart';

import 'barbershop_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  int _currentIndex = 1;

  final pages = [
    GSBarberPage(),
    NewsPaperPage(),
    BarberShopPage(),
    BarbersPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ]),
        child: BottomNavigationBar(
          selectedItemColor: Colors.indigo[900],
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 32.0,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage("assets/barbershopicon.png"),
                  size: 28,
                ),
              ),
              label: "GS Barber",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.newspaper_faw5,
              ),
              label: 'Notícias',
            ),
            BottomNavigationBarItem(
              icon: Icon(FlutterIcons.list_alt_faw),
              label: 'Serviços',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/barbericon2.png"),
              ),
              label: 'Barbeiros',
            ),
            BottomNavigationBarItem(
              icon: Icon(FlutterIcons.face_profile_mco),
              label: 'Perfil',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
