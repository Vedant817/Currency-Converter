import 'package:currency_converter/currency_converter_material.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}
//? Widgets are Classes: Stateless Widget and Stateful Widgets.
//? Designs: Material Designs and Cupertino Design
//* State is like a data which App cares about.

class MyApp extends StatelessWidget { //? Once the data is created, it is immutable
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) { //* It is a class which helps in finding the class which is present in order locations.
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
