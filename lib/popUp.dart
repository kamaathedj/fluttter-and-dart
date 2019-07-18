import 'package:flutter/material.dart';

class Pop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {

      },
      tooltip: 'meme',
      elevation: 20.0,
      child: IconButton(
        onPressed: (){print('klicknalles');},
        icon: Icon(Icons.more_vert),
      )
      );
      
  }
}