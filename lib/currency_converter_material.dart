import 'package:flutter/material.dart';

//? We have two classes here because we can't create mutable variables inside the class.
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController =
      TextEditingController(); //? Used to make the use of value input.
  @override
  void initState() {
    //? For assigning values like futures, it can be done inside the initState.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //? Can define any variable here, setting up it's properties and using it further.
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
        // actions: [], //? These are shown at the top right for various operations tobe performed.
      ),
      body: Center(
        child: Column(
          //? To add different types of field.
          mainAxisAlignment: MainAxisAlignment.center,
          //? Vertically
          // crossAxisAlignment: CrossAxisAlignment.center, //* Avoided because we are using Column
          children: [
            Text(
              'INR ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              //? Can also use Padding to set various values.
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  // label: Text('Please Enter the amount in INR',style: TextStyle(color: Colors.white),),
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  //? Can use IconData for advance processes
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
                    borderRadius: BorderRadius.all(Radius.circular(
                        60)), //? Here, we can also use just BorderRadius.circular()
                  ),
                  enabledBorder:
                      UnderlineInputBorder(), //? Adds underlined border at bottom.
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed:
                        true), //? Allows to add only that particular data type.
              ),
            ), //? Used for adding input.
            //? Types of Button: Text Button and Raised Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() { //? Helps in rebuilt of the required functions.
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(15),
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  //? Adds the Text Color
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
