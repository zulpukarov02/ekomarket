// ignore_for_file: library_private_types_in_public_api
import 'package:ekomarket/modules/history/history.dart';
import 'package:ekomarket/modules/home/view/home_page.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormaZakaza extends StatefulWidget {
  const FormaZakaza({Key? key}) : super(key: key);

  @override
  _FormaZakazaState createState() => _FormaZakazaState();
}

class _FormaZakazaState extends State<FormaZakaza> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  bool isFieldsFilled = false; // Flag to track if fields are filled

  double calculateTotalAmount() {
    // Add your logic here to calculate the total amount of the order
    // You can use the entered data from controllers to perform calculations
    return 0.0; // Replace this with your actual calculation
  }

  Order? currentOrder;
  int index = 0;
  void _showOrderConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final order = orders[index];

        final timeString = DateFormat('h:mm a').format(order.formattedDate);

        return AlertDialog(
          contentPadding: const EdgeInsets.all(15),
          title: Image.asset(
            "assets/images/bag.png",
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
                  "Время: ${DateFormat('h:mm a').format(order.formattedDate)}"),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                ); // Close the dialog
                Navigator.pop(context); // Close the FormaZakaza screen
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
        title: const Text("Оформление заказа"),
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
                'Общая сумма заказа: ${calculateTotalAmount()} руб.', // Display the calculated total amount
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(), // Add space to push the button to the bottom
            ElevatedButton(
              onPressed: isFieldsFilled
                  ? () {
                      _showOrderConfirmationDialog();
                    }
                  : null, // Disable the button if fields are not filled
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
