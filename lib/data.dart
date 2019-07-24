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
//  getItems(){
//    Data data;
//  for (var item in items) {
//   data.fromJson(item);
   
//  }
// }
}