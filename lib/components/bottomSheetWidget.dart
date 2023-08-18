// ignore_for_file: file_names

import 'package:ekomarket/components/fructlist.dart';
import 'package:ekomarket/modules/history/history.dart';

import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.order,
    this.divider,
    this.textApp,
    this.textStyle,
    this.sizedBox,
  });

  final Order order;
  final Divider? divider;

  final String? textApp;
  final TextStyle? textStyle;
  final SizedBox? sizedBox;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 236,
          color: AppColors.maincolor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "$textApp",
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(48),
                    color: AppColors.shopContainer),
                child: const Icon(
                  Icons.check_outlined,
                  color: AppColors.maincolor,
                  size: 50,
                ),
              ),
              const Spacer(flex: 1),
              Text(
                'Оформлен ${DateFormat('dd.MM.yyyy HH:mm').format(order.formattedDate)}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.ekoTEXT),
              ),
              // SizedBox(height: 16),
              const Spacer(),
              Text(
                ' ${order.orderAmount.toStringAsFixed(0)} c',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: AppColors.ekoTEXT),
              ),
              const Spacer(),
              const Text(
                "Доставка 150 с",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.ekoTEXT),
              ),
              const Spacer(),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  FructList(
                    imege: 'assets/images/apple.png',
                    title: 'Яблоко золотая радуга',
                    subtitle: 'Цена56 с за шт',
                    trailing: '56 с',
                    trailing2: '1 шт',
                  ),
                  FructList(
                    imege: 'assets/images/dracon.png',
                    title: 'Драконий фрукт',
                    subtitle: 'Цена 340 с за шт',
                    trailing: '340 с',
                    trailing2: '1 шт',
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(width: 328, height: 54, child: sizedBox),
      ],
    );
  }
}
