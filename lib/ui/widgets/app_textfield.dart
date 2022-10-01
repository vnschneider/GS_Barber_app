import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final VoidCallback helpOnTap;
  final Widget helpContent;
  final TextInputType keyType;

  AppTextField({
    @required this.icon,
    @required this.hint,
    @required this.keyType,
    this.helpOnTap,
    this.helpContent,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          keyboardType: keyType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black38),
            prefixIcon: Icon(icon),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
        if (helpContent != null && helpOnTap != null)
          Container(
            height: 48,
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: helpOnTap,
                child: helpContent,
              ),
            ),
          ),
      ],
    );
  }
}
