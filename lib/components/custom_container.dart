import 'package:ekomarket/components/bottom_sheet_home.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String productTitle;
  final String searchValue;
  final String productImage;
  const CustomContainer({
    super.key,
    required this.productTitle,
    required this.searchValue,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    if (!productTitle.toLowerCase().contains(searchValue.toLowerCase())) {
      return SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                  width: 180,
                  height: 96,
                ),
              ),
              Text(
                productTitle,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Spacer(),
              Text(
                '45c',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
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
                          padding: EdgeInsets.all(10),
                          // margin: EdgeInsetsDirectional.all(10),
                          width: double.maxFinite,
                          height: 570,
                          child: BottomSheetWidgetHome(
                            // order: order,
                            divider: Divider(
                              thickness: 10,
                              height: 4,
                              indent: 160,
                              endIndent: 160,
                              color: AppColors.ekoblak,
                            ),
                            // textApp: "",
                            textStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                            sizedBox: SizedBox(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  fixedSize: Size(328, 54),
                                  backgroundColor: AppColors.maincolor,
                                ),
                                child: Text('Оформить заказ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    )),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Добавить",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.maincolor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
