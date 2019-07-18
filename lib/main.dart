import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:try_kalle/DetailsPage.dart';
import 'data.dart';
// import 'model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Dawn',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightGreen,
      ),
    home: MyHomePage(title: 'Day To Day'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var product= Data(1,'meme',1.0);




  String _cardTitle;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  List<String> news=[];
  
  List<Data> _data=<Data>[];
  void initState() {
    // 
    super.initState();
    setState(() {
   listenForData();
    });
  }
  listenForData(){
  print(product.getItems());
 
  }

 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Drawer(
        semanticLabel: 'drawer menu',
        child: Comedrawer(),
      ),
      appBar: AppBar(
        // leading: Image.asset('assets/flutter-mark-square-64.png',scale: 2.5,color: Colors.amberAccent,),
        title: Text(widget.title),
        actions: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal: 60),),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){Scaffold.of(context).showSnackBar(SnackBar(content: Text('clicked'),));},
          )
        ],
        
      ),
      body: GestureDetector(
        onVerticalDragDown: (d){
         print(d);
        },
              child: Center(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child:Card(
                      elevation: 20,
                        child: Container(
                        width: double.infinity,
                        height: double.infinity,
                          child: Row(
                          children: <Widget>[
                            FlutterLogo(
                              colors: Colors.amber,
                              size: 100
                            ),
                            Text('Project Dashboard',style: TextStyle(fontSize: 25),),
                            // Pylon('meme'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListBuild(news),
                  )
                ],
              )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showAlertDialog();
          
          },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  int k=0;
  
   showAlertDialog(){
    //  String data;
      showDialog(
       context: context,
       builder: (BuildContext context){
         return AlertDialog(
           contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
           backgroundColor: Colors.white,
           elevation: 10.0,
           content: Container(
            
             color: Colors.transparent,
             height: 280,
              child: ListView(
               children: <Widget>[
                 Text('Do you want to redo an old workout ?',
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),textAlign: TextAlign.center,),
                 Divider(height: 20,),
                 Container(
                   height: 150,
                  //  color: Colors.cyanAccent,
                   child: ListView(
                     addSemanticIndexes: true,
                     addRepaintBoundaries: true,
                     shrinkWrap: true,
                     children: <Widget>[
                       FlatButton(
                           onPressed: (){
                             print('You have clicked byceps it $_counter times');},
                           child: ListTile(
                           leading: Icon(Icons.hearing),
                           title: Text('Byceps'),
                           subtitle: Text('hand byceps'),
                         ),
                       ),
                       FlatButton(
                         onPressed: (){},
                        //  splashColor: Colors.amberAccent,
                        //  highlightColor: Colors.amberAccent,
                           child: ListTile(
                           leading: Icon(Icons.accessibility_new),
                           title: Text('Lower Back'),
                           subtitle: Text('Lean forward'),
                         ),
                       ),
                       
                       Text('Select one :'),
                      //  Radio(
                      //    activeColor: Colors.amberAccent,
                      //    value: 1,
                      //    groupValue: 0,
                      //    onChanged: (pressed){},
                      //  ),
                       
                       RadioListTile(
                           title: Text('Gmail'),
                         subtitle: Text('kamaa@gmail.com'),
                         activeColor: Colors.amberAccent,
                         value: k,
                         groupValue: k,
                         onChanged: (int pressed){setState(() {
                           k=pressed;
                          // k=pressed; 
                          print(pressed);
                         });},
                       ),
                       RadioListTile(
                         title: Text('Outlook'),
                         subtitle: Text('kamaa@outlook.com'),
                         value: 1,
                         groupValue: k,
                         onChanged: (int pressed){setState(() {
                           k=pressed;
                          // k=pressed; 
                          print(pressed);
                         });},

                       ),
                       Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                          validator: (input){
                            if(input.isEmpty){
                              return 'add card title';
                            }
                          },
                          onSaved: (input)=>_cardTitle=input,
                          decoration: InputDecoration(
                            labelText:'Card title' 
                            ),
                               ),
                               
                          ],
                          
                        ), 
                         
                         
                         )

                     ],
                   ),
                   
                 ),
                 SizedBox(height: 15),
                 Container(
                   
                   child: Column(
                     children: <Widget>[
                      //  Container(
                      //    child: Text('OR'),
                      //    margin: EdgeInsets.all(10),
                      //    ),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                            FlatButton(
                           onPressed:() {
                             putCard();
                             Navigator.pop(context);
                             },
                           color: Colors.greenAccent,
                           child: Container(
                             
                            child: Center(child: Text('Start New')),
                            height: 40,
                            width: 80,
                           
                           ),
                           
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
                         ),
                             
                          
                            FlatButton(
                           onPressed: (){Navigator.of(context).pop();},
                           color: Colors.greenAccent,
                           child: Container(
                            child: Center(child: Text('Cancel')),
                            height: 40,
                            width: 80,
                           
                           ),
                           
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
                         ),
                           
                           ],
                       )
                     ],
                   ),
                 )
               ],
             ),
           ),
           
         );
       }
     );
  }
  putCard(){
    final formstate=_formKey.currentState;
    // formstate.save(); 
    if (formstate.validate()){
         formstate.save();
         setState(() {
          news.add(_cardTitle);  
         }); 
        
    }
  }
}



class Pylon extends StatelessWidget {
  final String name;
  Pylon(this.name); 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: (){
            print(this.name);
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ItemDetail(item :name)));
          },
          child: Dismissible(
             key: Key(name),
             background: Container(color: Colors.red,),
             secondaryBackground: Container(color: Colors.green,),
             onDismissed: (direction){
               if(direction==DismissDirection.startToEnd){
                 Scaffold.of(context).showSnackBar(SnackBar(content: Text('dismissed badly $name'),));
               }else{
                 Scaffold.of(context).showSnackBar(SnackBar(content: Text('dismissed googly $name'),));
               }
               
             },
            child: Card(
          elevation: 10,
          color: Colors.white70,
              child: Container(
                
                  constraints: BoxConstraints(maxHeight: double.infinity),
                  //  height: 200,
                   width: 380,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),color: Colors.transparent,),
                    child: Container(
                      
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          
                        Container( 
                          padding: EdgeInsets.only(top:12),
                          height: 40,
                          width: 360,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.blue,),
                          // color: Colors.blue,
                          child: Text(name,textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.white),),
                        ),
                        SizedBox(height: 20,),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.blue,
                            ),
                            Container(
                              height: 60,
                              width: 2,
                              color: Colors.green,
                            ),
                            Container(
                              height: 80,
                              width: 2,
                              color: Colors.redAccent,
                            ),
                            Container(
                              // constraints: BoxConstraints.expand(width: 5),
                              height: 47,
                              width: 2,
                              color: Colors.lightBlue,
                            ),
                            Container(
                              height: 44,
                              width: 2,
                              color: Colors.lime,
                            ),
                            Container(
                              height: 55,
                              width: 2,
                              color: Colors.orangeAccent,
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.teal,
                            ),
                          ],
                          
                        ),
                       Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text('Mon',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('Tue',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Wed',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Thu',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Fri',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Sat',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Sun',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                           
                      SizedBox(height: 15,)

                      ],
              
            ),
                    ),
            
          ),
        ),
      ),
    );
  }
}

class ListBuild extends StatelessWidget{
 final List mCardList;
  ListBuild(this.mCardList);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mCardList.length,
      // separatorBuilder: (BuildContext context, int index) =>Divider(),
      itemBuilder: (BuildContext context,int index){
        // print(mCardList[index].runtimeType);
        return Pylon(mCardList[index]);
      }, 

    );
  }

}

class Comedrawer extends StatelessWidget {
  final bool done=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: done==true? Colors.lightGreen : Colors.lightBlue,
            height: 160,
            width: 330,
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              leading: Icon(Icons.email),
              title: Text('David kamau'),
              subtitle: Text('kamaudavi@flutter.com'),
            ),
          ),
          ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: Icon(Icons.person),
          title: Text('This is the first item'),
          subtitle: Text('item 1'),

      ),
      FlutterLogo(
        size: 100,
        style: FlutterLogoStyle.horizontal,
      ),
       SizedBox(height: 10,width: double.infinity,),
       Divider(height: 10,),
      Text('More details ...',
      style: Theme.of(context).textTheme.title.copyWith(
        fontSize: 20
      ),),
      Divider(height: 10,),

      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('meme'),
            Text('meme'),
            Text('meme'),
          ],
        ),
      )
        ],
      )
    );
  }
}