import 'package:flutter/foundation.dart';
import 'package:shop/providers/cart.dart';

class OrdersItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime time;

  OrdersItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.time,
  });
}

class Orders with ChangeNotifier {
  List<OrdersItem> _orders = [];

  List<OrdersItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> products, double total) {
    _orders.insert(
      0,
      OrdersItem(
          id: DateTime.now().toString(),
          amount: total,
          products: products,
          time: DateTime.now()),
    );
    notifyListeners();
  }
  
}
