import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gsbarber_app/services/auth_provider_service.dart';
import 'package:gsbarber_app/ui/login&register/register_page.dart';
import 'package:gsbarber_app/ui/menu%20pages/home_page.dart';
import 'package:gsbarber_app/ui/widgets/app_outlinedbutton.dart';
import 'package:gsbarber_app/ui/widgets/app_textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  TapGestureRecognizer registerOnTap = TapGestureRecognizer();

  @override
  void initState() {
    registerOnTap = TapGestureRecognizer();
    registerOnTap
      ..onTap = () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => RegisterPage(),
            ));
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
        toolbarHeight: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Image.asset(
                "assets/logogs4.png",
                height: 435,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0),
                        ),
                      ],
                    ),
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
                      helpContent: Text(
                        "Esqueceu?",
                        style:
                            TextStyle(fontSize: 16, color: Colors.indigo[900]),
                      ),
                      helpOnTap: () {},
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
                              "Login",
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
                    SizedBox(height: 24),
                    Text(
                      "Ou faça login com...",
                      style: TextStyle(color: Colors.black38),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: AppOutlinedButton(
                            asset: "assets/googleicon.png",
                            onTap: () async {
                              await AuthProviderService.instance.signIn();
                              if (AuthProviderService.instance.user != null)
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => HomePage()));
                            },
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
                    Text.rich(
                      TextSpan(
                        text: "Novo aqui? ",
                        children: [
                          TextSpan(
                            text: "Criar conta",
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: registerOnTap,
                          ),
                        ],
                      ),
                      style: TextStyle(color: Colors.black54),
                    ),
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
