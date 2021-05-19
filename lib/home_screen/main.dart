import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_converter/input_screens/feet_to_metres.dart';
import 'package:unit_converter/input_screens/gallons_to_litres.dart';
import 'package:unit_converter/input_screens/ounces_to_kilograms.dart';
import 'package:unit_converter/input_screens/yards_to_metres.dart';
import 'package:unit_converter/input_screens/mps_to_kmh.dart';
import 'package:unit_converter/input_screens/fahreinheit_to_celsius.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
            "Welcome, user!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
          color: Colors.amber,
        ),),
        centerTitle: true,
        elevation: 0.0,
      ),

      body: ListView(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget> [
              SizedBox(
                height: 140.0,
                width: 155.0,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeetToMetres()),
                    );
                  },
                  icon: Icon(Icons.height,size: 30.0),
                  label: Text("Feet\n to\n Metres", style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),

              SizedBox(
                height: 140.0,
                width: 155.0,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GallonsToLitres()),
                    );
                  },
                  icon: Icon(Icons.stream, size: 30.0),
                  label: Text("Gallons\n to\n Litres", style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),

            ],


          ),

          SizedBox(
            height: 70.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget> [
              SizedBox(
                height: 140.0,
                width: 155,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OuncesToKilograms()),
                    );
                  },
                  icon: Icon(Icons.shopping_bag, size: 30.0),
                  label: Text("Ounces\n to\n Kilograms", style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),

              SizedBox(
                height: 140.0,
                width: 155,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YardsToMetres()),
                    );
                  },
                  icon: Icon(Icons.arrow_right_alt, size: 30.0),
                  label: Text("Yards\n to\n Metres", style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),

            ],

          ),

          SizedBox(
            height: 70.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget> [
              SizedBox(
                height: 140.0,
                width: 155,
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MpsToKmh()),
                    );
                  },
                  icon: Icon(Icons.speed, size: 30.0),
                  label: Text("Mps\n to\n Km/h", style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),

              SizedBox(
                height: 140.0,
                width: 155,
                child: RaisedButton.icon(
                  padding: EdgeInsets.symmetric(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FahreinheitToCelsius()),
                    );
                  },
                  icon: Icon(Icons.thermostat_rounded, size: 30.0),
                  label: Text("Fahreinheit\n to\n Celsius", style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),



    );

  }
}

