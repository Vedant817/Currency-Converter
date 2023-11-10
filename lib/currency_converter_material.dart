import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) { //? Can define any variable here, setting up it's properties and using it further.
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
                color: Colors.black,
              ),
              decoration: InputDecoration(
                // label: Text('Please Enter the amount in INR',style: TextStyle(color: Colors.white),),
                hintText: 'Please enter the amount in USD',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: Icon(Icons.monetization_on) ,//? Can use IconData for advance processes
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60)), //? Here, we can also use just BorderRadius.circular()
                ),
                enabledBorder: UnderlineInputBorder() //? Adds underlined border at bottom.
              ),
            ), //? Used for adding input.
          ],
        ),
      ),
    );
  }
}
