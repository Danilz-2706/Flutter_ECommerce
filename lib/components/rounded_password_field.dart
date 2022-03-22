import 'package:ecommerce/components/text_field_container.dart';
import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.hinttext,
    this.color = kPrimaryColor,
    required this.iconb,
    required this.iconf,
    required this.onchanged,
  }) : super(key: key);

  final String hinttext;
  final Color color;
  final IconData iconb, iconf;
  final ValueChanged<String> onchanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onchanged,
        decoration: InputDecoration(
          icon: Icon(
            iconb,
            color: color,
          ),
          hintText: hinttext,
          suffixIcon: Icon(
            iconf,
            color: color,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
