import 'package:examen/src/styles/styles.dart';
import 'package:flutter/material.dart';

Widget titles(String texto) {
  return Container(
      alignment: AlignmentDirectional.topStart,
      margin: EdgeInsets.only(left: 30.0),
      child: Text(
        texto,
        style: titlesStyle,
      ));
}

Widget title(String texto) {
  return Container(
      alignment: AlignmentDirectional.topStart,
      margin: EdgeInsets.only(left: 12),
      child: Text(
        texto,
        style: titlesRecipeStyle,
      ));
}
