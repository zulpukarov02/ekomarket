import 'package:ekomarket/components/bottomSheetWidget.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';

import 'history.dart';

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  const OrderDetailsScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const History(),
                ),
              );
            },
            color: Colors.black,
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: Center(
            child: Text(
              'Заказ №${order.orderNumber}',
              style: const TextStyle(
                  color: AppColors.ekoblak,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          backgroundColor: AppColors.shopContainer,
          elevation: 0,
        ),
        body: BottomSheetWidget(order: order));
  }
}
