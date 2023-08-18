import 'package:ekomarket/components/bottomSheetWidget.dart';
import 'package:ekomarket/modules/history/orderdetailsscreen.dart';

import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Order {
  final int orderNumber;
  final DateTime formattedDate;
  final double orderAmount;

  Order({
    required this.orderNumber,
    required this.formattedDate,
    required this.orderAmount,
  });
}

final List<Order> orders = [
  Order(orderNumber: 1, formattedDate: DateTime.now(), orderAmount: 25.0),
  Order(orderNumber: 2, formattedDate: DateTime.now(), orderAmount: 50.0),
  Order(orderNumber: 3, formattedDate: DateTime.now(), orderAmount: 75.0),
];

class History extends StatelessWidget {
  const History({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'История заказов',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          final timeString = DateFormat('h:mm ').format(order.formattedDate);

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // '${DateFormat('dd.MM.yyyy').format(order.formattedDate)}',
                  const Text("Сегодня"),
                  const Column(
                    children: [
                      //   Card(
                      //     color: Colors.white,
                      //     elevation: 3,
                      //     margin: const EdgeInsets.symmetric(
                      //         horizontal: 10, vertical: 5),
                      //     child: ListTile(
                      //       leading: Container(
                      //         padding: const EdgeInsets.all(15),
                      //         decoration: BoxDecoration(
                      //             borderRadius:
                      //                 BorderRadiusDirectional.circular(48),
                      //             color: AppColors.maincolor),
                      //         child: Image.asset(
                      //           "assets/images/Icon.png",
                      //           color: AppColors.shopContainer,
                      //         ),
                      //       ),
                      //       title: Text('Заказa №${order.orderNumber}'),
                      //       subtitle: Text(
                      //         ' ${timeString.toString()}',
                      //         style: const TextStyle(color: Colors.grey),
                      //       ),
                      //       trailing: Text(
                      //         ' ${order.orderAmount.toStringAsFixed(00)}som',
                      //         style: const TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: AppColors.maincolor,
                      //         ),
                      //       ),
                      //       onTap: () {},
                      //     ),
                      //   ),
                    ],
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 3,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(48),
                              color: AppColors.maincolor),
                          child: Image.asset(
                            "assets/images/Icon.png",
                            color: AppColors.shopContainer,
                          ),
                        ),
                        title: Text('Заказ №${order.orderNumber}'),
                        subtitle: Text(
                          timeString.toString(),

                          style: const TextStyle(
                              color: Colors.grey), // Цвет подзаголовка
                        ),
                        trailing: Text(
                          ' ${order.orderAmount.toStringAsFixed(00)}som',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.maincolor),
                        ),
                        onTap: () {
                          // _showExitBottomSheet(BuildContext context) {
                          showModalBottomSheet(
                            context: context,
                            elevation: 0,
                            useRootNavigator: true,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                padding: const EdgeInsets.all(10),
                                // margin: EdgeInsetsDirectional.all(10),
                                width: double.maxFinite,
                                height: 570,
                                child: BottomSheetWidget(
                                  order: order,
                                  divider: const Divider(
                                    thickness: 4,
                                    height: 4,
                                    indent: 160,
                                    endIndent: 160,
                                  ),
                                  textApp: "Заказ №${order.orderNumber}",
                                  textStyle: const TextStyle(
                                      color: AppColors.ekoblak,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                  sizedBox: SizedBox(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                OrderDetailsScreen(
                                                    order: order),
                                          ),
                                        );
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    AppColors.maincolor),
                                      ),
                                      child: const Text('Закрыть',
                                          style: TextStyle(
                                              color: AppColors.ekoTEXT,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                  ),
                  Text(
                    DateFormat('dd.MM.yyyy').format(order.formattedDate),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
