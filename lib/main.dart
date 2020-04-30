import 'package:flutter/material.dart';
import 'TelaDicas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Tela Principal',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: TelaDicas(),
  ));
}
