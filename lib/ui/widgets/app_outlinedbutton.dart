import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  final String asset;
  final VoidCallback onTap;

  AppOutlinedButton({@required this.asset, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Image.asset(
          asset,
          height: 28,
        ),
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(color: Colors.black12)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
        ),
      ),
      onPressed: onTap,
    );
  }
}
