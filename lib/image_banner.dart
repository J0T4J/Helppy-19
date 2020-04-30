import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _color;

  ImageBanner(this._color);

  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          height: 200.0,
        ),
        child: Image.asset(_color, fit: BoxFit.cover));
  }
}
