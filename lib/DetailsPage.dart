import 'package:flutter/material.dart';
import 'pieChart.dart';

class ItemDetail extends StatefulWidget {
  final String item;

  const ItemDetail({Key key, this.item}) : super(key: key);
  // const ItemDetail({this.item});
   
  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.item),),
    //   body: Container(
    //   child: Text(widget.item),
    // ),
    body: Center(
      child: Chart(), 
      ),
    );

    
  }
}