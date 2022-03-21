import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.height * 0.45,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
}
