import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          //? To add different types of field.
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center, //* Avoided because we are using Column
          children: [
            Text(
              '0',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                // label: Text('Please Enter the amount in INR',style: TextStyle(color: Colors.white),),
                hintText: 'Please enter the amount in USD',
                hintStyle: TextStyle(
                  color: Colors.white60,
                ),
              ),
            ), //? Used for adding input.
          ],
        ),
      ),
    );
  }
}
