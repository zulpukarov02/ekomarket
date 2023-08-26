// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ekomarket/models/models.dart';
import 'package:ekomarket/modules/corzina/corzina.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ekomarket/theme/custom/app_colors.dart';

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
            color: AppColors.shop,
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
                        cartItem.imagePath,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      cartItem.name,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      cartItem.id,
                      style: TextStyle(fontSize: 13),
                    ),
                    Row(
                      children: [
                        Text(
                          " ${cartItem.price.toStringAsFixed(0)}c ",
                          style: const TextStyle(
                              color: AppColors.maincolor,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => AppColors.maincolor),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                          ),
                          onPressed: onDecrease,
                          child: const Icon(
                            Icons.remove,
                            color: AppColors.shop, // Use your color here
                          ),
                        ),
                        Text(cartItem.quantit.toStringAsFixed(0),
                            style: const TextStyle(
                                color: AppColors.ekoblak,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MaterialStateColor.resolveWith(
                              (states) => AppColors.maincolor,
                            ),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                          ),
                          onPressed: onIncrease,
                          child: const Icon(
                            Icons.add,
                            color: AppColors.shop,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
