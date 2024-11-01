import 'package:flutter/material.dart';

class ImageItems {
  final String userLogo = 'indir.png';
}

class PaddingItems {
  final EdgeInsets basicPadding =
      EdgeInsets.all(PaddingConstanst().basicPaddingSize);
  final EdgeInsets basicPadding2x =
      EdgeInsets.all(PaddingConstanst().basicPaddingSize * 2);
}

class PaddingConstanst {
  double standartPaddingvertical = 16;
  double basicPaddingSize = 6;
  BorderRadius borderradius = BorderRadius.circular(30);
  double containerBasicSize = 50;
}
