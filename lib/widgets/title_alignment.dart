import 'package:flutter/material.dart';
import 'package:ui_tasarim/constants/imageItems.dart';
import 'package:ui_tasarim/product/language/language_items.dart';

class TitleAlignment extends StatelessWidget {
  const TitleAlignment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, 
      child: Padding(
        padding: PaddingItems().basicPadding2x,
        child: Text(
          LanguageItems().homeColumnTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
