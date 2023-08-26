import 'package:ekomarket/models/models.dart';
import 'package:ekomarket/modules/corzina/forma_zakaza.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';

import 'corzina_productitem.dart';

class CartScreen extends StatefulWidget {
  // final List<CartItem> cartItems;
  final double? totalAmount;

  const CartScreen({
    super.key,
    // required this.cartItems,
    this.totalAmount,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double calculateSubtotal() {
    double subtotal = 0;
    for (var cartItem in cartItems) {
      subtotal += cartItem.price * cartItem.quantit;
    }
    return subtotal;
  }

  double calculateDelivery() {
    return 150;
  }

  double calculateTotal() {
    return calculateSubtotal() + calculateDelivery();
  }

  void removeFromCart(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        contentPadding: const EdgeInsets.all(15),
        title: Image.asset(
          "assets/images/bag.png",
          width: 163,
          height: 200,
        ),
        content: const Text(
          'Заказ может быть при покупке свыше 300 с',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => AppColors.maincolor,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                fixedSize: (Size(296, 54))),
            child: const Text('Закрыть'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              child: const Text(
                "Очистить",
                style: TextStyle(
                    color: AppColors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 45),
            const Text(
              'Корзина',
              style: TextStyle(
                  color: AppColors.ekoblak,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        backgroundColor: AppColors.ekoTEXT,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (ctx, index) => CorzinaProductItem(
                cartItem: cartItems[index],
                onIncrease: () {
                  if (cartItems[index].quantit > 0) {
                    setState(() {
                      cartItems[index].quantit++;
                    });
                  }
                },
                onDecrease: () {
                  if (cartItems[index].quantit > 0) {
                    setState(() {
                      cartItems[index].quantit--;
                    });
                  }
                },
                onRemove: () {
                  removeFromCart(index);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("Сумма"),
                    const SizedBox(width: 229),
                    Text(' ${calculateSubtotal().toStringAsFixed(0)} c',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    const Text("Доставка"),
                    const SizedBox(width: 210),
                    Text(' ${calculateDelivery().toStringAsFixed(0)} c',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    const Text("Итого"),
                    const SizedBox(width: 241),
                    Text(
                      '${calculateTotal().toStringAsFixed(0)} c',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                if (calculateTotal() < 300) {
                  _showAlertDialog();
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormaZakaza(
                        totalAmount: calculateTotal(),
                      ),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                fixedSize: Size(328, 54),
                backgroundColor: AppColors.maincolor,
              ),
              child: const Text(
                'Оформить заказ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
