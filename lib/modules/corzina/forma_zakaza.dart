import 'package:ekomarket/modules/history/history.dart';
import 'package:ekomarket/modules/home/view/home_page.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormaZakaza extends StatefulWidget {
  final double totalAmount;
  const FormaZakaza({Key? key, required this.totalAmount}) : super(key: key);

  @override
  _FormaZakazaState createState() => _FormaZakazaState();
}

class _FormaZakazaState extends State<FormaZakaza> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  bool isFieldsFilled = false;

  Order? currentOrder;
  int index = 0;
  void _showOrderConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final order = orders[index];

        // ignore: unused_local_variable
        final timeString = DateFormat('h:mm a').format(order.formattedDate);

        return AlertDialog(
          contentPadding: const EdgeInsets.all(15),
          title: Image.asset(
            "assets/images/bag (1).png",
            width: 163,
            height: 200,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Заказ №343565657 оформлен',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Text(
                  "Дата и время ${DateFormat('dd.MM.yyyy HH:mm').format(order.formattedDate)}"),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavigeshinbarWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                fixedSize: Size(328, 54),
                backgroundColor: AppColors.maincolor,
              ),
              child: const Text('Перейти в магазин'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.shop,
        title: const Text(
          "Оформление заказа",
          style: const TextStyle(
              color: AppColors.ekoblak,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Номер телефона'),
              onChanged: (value) {
                setState(() {
                  isFieldsFilled = phoneNumberController.text.isNotEmpty &&
                      addressController.text.isNotEmpty &&
                      landmarkController.text.isNotEmpty &&
                      commentController.text.isNotEmpty;
                });
              },
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Адрес'),
              onChanged: (value) {
                setState(() {
                  isFieldsFilled = phoneNumberController.text.isNotEmpty &&
                      addressController.text.isNotEmpty &&
                      landmarkController.text.isNotEmpty &&
                      commentController.text.isNotEmpty;
                });
              },
            ),
            TextField(
              controller: landmarkController,
              decoration: InputDecoration(labelText: 'Ориентир'),
              onChanged: (value) {
                setState(() {
                  isFieldsFilled = phoneNumberController.text.isNotEmpty &&
                      addressController.text.isNotEmpty &&
                      landmarkController.text.isNotEmpty &&
                      commentController.text.isNotEmpty;
                });
              },
            ),
            TextField(
              controller: commentController,
              decoration: InputDecoration(labelText: 'Комментарий'),
              onChanged: (value) {
                setState(() {
                  isFieldsFilled = phoneNumberController.text.isNotEmpty &&
                      addressController.text.isNotEmpty &&
                      landmarkController.text.isNotEmpty &&
                      commentController.text.isNotEmpty;
                });
              },
            ),
            Spacer(flex: 25),
            Center(
              child: Text(
                'Сумма заказа ${(widget.totalAmount).toStringAsFixed(0)} c',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: isFieldsFilled
                  ? () {
                      _showOrderConfirmationDialog();
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                fixedSize: Size(328, 54),
                backgroundColor:
                    isFieldsFilled ? AppColors.maincolor : Colors.grey,
              ),
              child: const Text('Заказать доставку'),
            ),
          ],
        ),
      ),
    );
  }
}
