import 'package:flutter/material.dart';
import 'package:ui_tasarim/constants/imageItems.dart';

class UserPng extends StatelessWidget {
  const UserPng({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: PaddingConstanst().borderradius,
        child: Image.asset(
          _nameWithPath,
          fit: BoxFit.contain,
        ));
  }

  String get _nameWithPath => 'assets/png/$name';
}
