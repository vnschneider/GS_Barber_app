import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gsbarber_app/ui/menu%20pages/home_page.dart';
import 'package:gsbarber_app/ui/widgets/app_outlinedbutton.dart';
import 'package:gsbarber_app/ui/widgets/app_textfield.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
        toolbarHeight: 0.0,
        brightness: Brightness.light,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/logogs4.png",
                    height: 435,
                    fit: BoxFit.cover,
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          "Criar conta",
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Expanded(
                          child: AppOutlinedButton(
                            asset: "assets/googleicon.png",
                            onTap: () {},
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: AppOutlinedButton(
                            asset: "assets/appleicon.png",
                            onTap: () {},
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: AppOutlinedButton(
                            asset: "assets/facebookicon.png",
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Ou faça o registro com email",
                      style: TextStyle(color: Colors.black38),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 6),
                    AppTextField(
                      hint: "Email",
                      icon: FlutterIcons.email_ent,
                      keyType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 12),
                    AppTextField(
                      hint: "Senha",
                      icon: FlutterIcons.lock_faw,
                      keyType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 12),
                    AppTextField(
                      hint: "Nome",
                      icon: FlutterIcons.user_faw,
                      keyType: TextInputType.name,
                    ),
                    SizedBox(height: 12),
                    AppTextField(
                      hint: "Número",
                      icon: FlutterIcons.phone_faw,
                      keyType: TextInputType.phone,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo[900]),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(16)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              )),
                            ),
                            child: Text(
                              "Criar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomePage()));
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
