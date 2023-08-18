// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ekomarket/theme/custom/app_colors.dart';

class CartItem {
  final String id;
  final String title;
  final double price;
  int quantity;

  // final String image;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    // required this.image,
  });
}

class CorzinaProductItem extends StatelessWidget {
  final CartItem cartItem;
  final Function() onIncrease;
  final Function() onDecrease;
  final Function() onRemove;

  const CorzinaProductItem({
    super.key,
    required this.cartItem,
    required this.onIncrease,
    required this.onDecrease,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 100,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: AppColors.container,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'assets/images/momo.png',
                        // fit: BoxFit.cover,
                        width: 98, height: 86,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        color: Colors.white,
                        child: Center(
                          child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.trashCan,
                              color: AppColors.red,
                              size: 20,
                            ),
                            onPressed: onRemove,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    cartItem.title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(cartItem.id),
                      Text(
                        " ${cartItem.price.toStringAsFixed(0)}c ",
                        style: const TextStyle(
                            color: AppColors.maincolor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  trailing: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => AppColors.maincolor),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(4),
                        ),
                        onPressed: onDecrease,
                        child: const Icon(
                          Icons.remove,
                          color: AppColors.shop, // Use your color here
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(cartItem.quantity.toString(),
                          style: const TextStyle(
                              color: AppColors.ekoblak,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MaterialStateColor.resolveWith(
                            (states) => AppColors.maincolor,
                          ),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(4),
                        ),
                        onPressed: onIncrease,
                        child: const Icon(
                          Icons.add,
                          color: AppColors.shop,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
