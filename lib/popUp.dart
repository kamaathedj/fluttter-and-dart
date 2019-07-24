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
             ),
             CheckedPopupMenuItem(
               checked: true,
               child: Text('Enable dark mode'),
               enabled: true,
             )
          ],
           position: RelativeRect.fromLTRB(100, 40, 10, 10),
           
        );
      },
      initialValue: 1,
      onSelected: (index){print(index);},
      onCanceled: (){print('closed');},
      tooltip: 'meme',
      elevation: 20.0,
      icon: Icon(Icons.more_vert),
      );
      
  }
}

