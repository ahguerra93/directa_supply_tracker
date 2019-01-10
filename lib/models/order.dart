import 'orderItem.dart';

class Order{
  List<OrderItem> itemList = List<OrderItem>();
  String dueTo;
  double initialBudget; 
  String remarks;
  String status;
//   enum Fruit {
//   apple, banana
// }
  Order({this.dueTo, this.initialBudget, this.itemList, this.remarks, this.status});

  void addItem(OrderItem item){
    itemList.add(item);
  }
}

enum OrderStatus {
  IN_PROGRESS,
  INCOMPLETE,
  COMPLETE
}