import 'package:flutter/material.dart';

class Product extends StatefulWidget {
 final List mlist;
 Product(this.mlist);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('winter sale'),
      ),
          body: ListView.builder(
        itemCount:widget.mlist.length ,
        itemBuilder: (BuildContext context, int index) {

         return Card(
             child: ListTile(
             title: Text(widget.mlist[index]['productName']),
             subtitle: Text(widget.mlist[index]['price'].toString()),
            ),
         );
        },
        
      ),
    );
  }
}