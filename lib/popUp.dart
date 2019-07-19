import 'package:flutter/material.dart';

class Pop extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) { 
        showMenu(
          context: context, 
          items: <PopupMenuEntry>[
           PopupMenuItem(
             key: Key('popme'),
             child: ListTile(leading: Icon(Icons.access_alarm),title: Text('pop me '),),
             enabled: true,
             ),
             PopupMenuDivider(height: 5,),
             PopupMenuItem(
               key: Key('settings'),
               child: ListTile(leading: Icon(Icons.settings),title: Text('Settings'),)
             )
          ],
           position: RelativeRect.fromLTRB(100, 40, 10, 10),
           
        );
      },
      tooltip: 'meme',
      elevation: 20.0,
      icon: Icon(Icons.more_vert),
      );
      
  }
}