import 'package:ecommerce/components/text_field_container.dart';
import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hinttext,
    this.color = kPrimaryColor,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  final String hinttext;
  final Color color;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: color,
            ),
            hintText: hinttext,
            border: InputBorder.none),
      ),
    );
  }
}
