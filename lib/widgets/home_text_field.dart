import 'package:flutter/material.dart';
import 'package:ui_tasarim/constants/imageItems.dart';

class MyHomeTextField extends StatelessWidget {
  const MyHomeTextField({
    required this.hintText,
    this.icon,
    required this.controller,
    this.onChanged,
  });

  final Icon? icon;
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged; // onChanged işlevi

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems().basicPadding2x,
      child: TextField(
        controller: controller,
        onChanged: onChanged, // onChanged burada TextField'a bağlandı
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: PaddingConstanst().borderradius),
          prefixIcon: icon,
          hintText: hintText,
        ),
      ),
    );
  }
}
