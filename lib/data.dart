import 'model.dart';

class Data{
  dynamic id;
  String productName;
  double price;
  
 
Data(dynamic id,String productname,double price){
  this.id=id;
  this.productName=productname;
  this.price=price;
}
Data.fromJson(Map jsonMap){
  id=jsonMap['id'];
  productName=jsonMap['productName'];
  price=jsonMap['price']?.toDouble()?? - 0.0;
}
 getItems(){
  Data data;
    for (var item in items) {
      data=Data.fromJson(item);
      String name=data.productName;
      double price=data.price;
      print('$name is sold at $price');
      
    }
    // items.map((item){
    //   new Data.fromJson(item);
    //   print(item.productName);
    //   });
    
   
  }


}
  // getItems(){
  // // Data data;
  //   // for (var item in items) {
  //   //   data=Data.fromJson(item);
  //   //   String name=data.productName;
  //   //   double price=data.price;
  //   //    print('$name is sold at $price');
      
  //   // }
  //   return items.map((item)=>new Data.fromJson(item));
   
  // }
