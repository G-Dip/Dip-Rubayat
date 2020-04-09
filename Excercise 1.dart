import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: MainActivity(),
  ));
}

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}



class _MainActivityState extends State<MainActivity> {

  double _val = 150.0;
  double _val2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(angle: (_val2*3.14159265359)/180,child: FlutterLogo(size: _val),),

      ),



   


      bottomNavigationBar:
          SizedBox(
            height: 150,
            child: Column(
              children: <Widget>[
                Slider(
                  min: 0,
                  max: 360,
                  value: _val,
                  onChanged: (value) {
                    setState(() {
                      _val = value;
                    });
                  },
                ),
                Slider(
                  min: 0,
                  max: 360,
                  value: _val2,
                  onChanged: (value) {
                    setState(() {
                      _val2 = value;
                    });
                  },
                ),
              ],
            ),




          ),



    );
  }