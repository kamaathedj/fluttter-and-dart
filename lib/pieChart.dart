
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {

  @override
  _ChartState createState() => _ChartState();
}
// TODO : LEARN about animated container
class _ChartState extends State<Chart> {
  Color color;
  double size=10;
  BoxShape shape;
  List <BoxShadow> shadow;
  @override
  Widget build(BuildContext context) {
    return Center(
          child: AnimatedContainer(
        duration: Duration(seconds: 5),
        curve: Curves.easeInOut,
        width: size,
        height: size,
        decoration: BoxDecoration(
         shape: BoxShape.circle,
        color: color,
        boxShadow: shadow,
        ),
        child: IconButton(
          icon: Icon(Icons.access_alarms),
          onPressed: (){
            PopUp();
            setState(() {
             color=Colors.green; 
             size=250;
             shadow=[BoxShadow(color: Colors.green,blurRadius: 80.0,spreadRadius: 10.0)];
             shape=BoxShape.circle;
            });
          },
        ),
      ),
    );
  }
}



 class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('another pop up'),
      children: <Widget>[
        
      ],
      
    );
  }
}