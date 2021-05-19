import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  home: YardsToMetres(),
));

class YardsToMetres extends StatefulWidget {
  const YardsToMetres({Key key}) : super(key: key);

  @override
  _YardsToMetresState createState() => _YardsToMetresState();
}

class _YardsToMetresState extends State<YardsToMetres> {

  TextEditingController yardsToMetres = TextEditingController();
  var displayResult = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Yards To Kilometres",
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
                controller: yardsToMetres,
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
                  hintText: "Input yards...",
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
                this.displayResult = _calculateYardsToMetres();
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

  String _calculateYardsToMetres() {
    double yards = double.parse(yardsToMetres.text);

    double getMetres = (yards * 0.9144);

    String result = "$getMetres Metres";
    return result;
  }

}
