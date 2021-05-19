import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  home: GallonsToLitres(),
));

class GallonsToLitres extends StatefulWidget {
  const GallonsToLitres({Key key}) : super(key: key);

  @override
  _GallonsToLitresState createState() => _GallonsToLitresState();
}

class _GallonsToLitresState extends State<GallonsToLitres> {

  TextEditingController gallonsToLitres = TextEditingController();
  var displayResult = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Gallons To Litres",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Center(
            child: SizedBox(
              width: 250.0,
              height: 100.0,
              child: TextField(
                controller: gallonsToLitres,
                style: TextStyle(
                  color: Colors.amber,
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.amber, width: 5.0),
                  ),
                  hintText: "Input gallons...",
                  hintStyle: TextStyle(
                    color: Colors.amber,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.amber, width: 5.0),
                  ),
                ),
              ),

            ),

          ),

          RaisedButton.icon(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            color: Colors.amber,
            onPressed: () {
              setState(() {
               this.displayResult = _calculateGallonsToLitres();
              });
              },
            icon: Icon(Icons.fast_forward),
            label: Text("Convert"),
          ),


          SizedBox(
            height: 70.0,
          ),

          Text(
            this.displayResult,
            style: TextStyle(
              color: Colors.amber,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),

        ],
      ),
    );

  }

  String _calculateGallonsToLitres() {
    double gallons = double.parse(gallonsToLitres.text);

    double getLitres = (gallons * 3.78541);

    String result = "$getLitres Litres";
    return result;
  }

}
