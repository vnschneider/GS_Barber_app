import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gsbarber_app/ui/login&register/login_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.indigo[900],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
    builder: EasyLoading.init(),
  ));
}
