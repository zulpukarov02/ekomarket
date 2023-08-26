import 'package:ekomarket/components/fruct_list.dart';
import 'package:ekomarket/components/fruct_list_corzina.dart';
import 'package:flutter/material.dart';

class BottomSheetWidgetHome extends StatelessWidget {
  const BottomSheetWidgetHome({
    super.key,
    // required this.order,
    this.divider,
    this.textApp,
    this.textStyle,
    this.sizedBox,
  });

  // final Order? order;
  final Divider? divider;

  final String? textApp;
  final TextStyle? textStyle;
  final SizedBox? sizedBox;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            itemCount: 8,
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  FructList(
                    imege: 'assets/images/image .png',
                    title: "Драконий фрукт",
                    subtitle: "sub",
                    trailing2: "trai",
                    trailing: "trail",
                  )
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
