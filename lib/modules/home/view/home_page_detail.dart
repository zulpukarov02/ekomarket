import 'package:ekomarket/components/custom_container.dart';
import 'package:ekomarket/components/serchwidget.dart';
import 'package:ekomarket/models/models.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class HomePageDetail extends StatefulWidget {
  const HomePageDetail({
    Key? key,
    // required this.nametext,
  }) : super(key: key);
  // final String nametext;
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePageDetail> {
  TextEditingController editingController = TextEditingController();
  List<CartItem> displayList = List.from(cartItems);

  void upDateList(String value) {
    setState(() {
      displayList = cartItems
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
      print('displayList: $displayList');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appBar,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: AppColors.ekoblak,
              )),
          centerTitle: true,
          title: Text(
            "Продукты",
            style: TextStyle(color: AppColors.appBartext),
          )),
      body: Column(
        children: [
          SearchWidjet(
            editingController: editingController,
            onChanged: (value) {
              upDateList(value);
            },
          ),
          // SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: displayList.isEmpty
                ? Center(
                    child: Column(
                    children: [
                      Image.asset("assets/images/notFount.png"),
                      Text(
                        "Ничего не нашли",
                        style: TextStyle(
                            color: AppColors.ekoblak,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.6),
                      )
                    ],
                  ))
                : ScrollableListTabView(
                    tabHeight: 48,
                    bodyAnimationDuration: const Duration(milliseconds: 150),
                    tabAnimationCurve: Curves.easeOut,
                    tabAnimationDuration: const Duration(milliseconds: 2),
                    tabs: [
                      ScrollableListTab(
                        tab: const ListTab(
                          label: Text('Все'),
                          showIconOnList: true,
                          activeBackgroundColor: AppColors.maincolor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        body: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.6),
                          ),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (_, index) {
                            if (index < displayList.length) {
                              return CustomContainer(
                                productTitle: displayList[index].name,
                                searchValue: editingController.text,
                                productImage: displayList[index].imagePath,
                              );
                            } else {
                              return SizedBox
                                  .shrink(); // Возвращаем пустой виджет, если индекс недопустим
                            }
                          },
                        ),
                      ),
                      ScrollableListTab(
                        tab: const ListTab(
                          label: Text('Фрукты'),
                          showIconOnList: true,
                          activeBackgroundColor: AppColors.maincolor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        body: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.6),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (_, index) {
                            if (index < displayList.length) {
                              return CustomContainer(
                                productTitle: displayList[index].name,
                                searchValue: editingController.text,
                                productImage: displayList[index].imagePath,
                              );
                            } else {
                              return SizedBox
                                  .shrink(); // Возвращаем пустой виджет, если индекс недопустим
                            }
                          },
                        ),
                      ),
                      ScrollableListTab(
                        tab: const ListTab(
                          label: Text('Сухофрукты'),
                          showIconOnList: true,
                          activeBackgroundColor: AppColors.maincolor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        body: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.6),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (_, index) {
                            if (index < displayList.length) {
                              return CustomContainer(
                                productTitle: displayList[index].name,
                                searchValue: editingController.text,
                                productImage: displayList[index].imagePath,
                              );
                            } else {
                              return SizedBox
                                  .shrink(); // Возвращаем пустой виджет, если индекс недопустим
                            }
                          },
                        ),
                      ),
                      ScrollableListTab(
                        tab: ListTab(
                          label: Text('Овощи'),
                          showIconOnList: true,
                          activeBackgroundColor: AppColors.maincolor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        body: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.6),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (_, index) {
                            if (index < displayList.length) {
                              return CustomContainer(
                                productTitle: displayList[index].name,
                                searchValue: editingController.text,
                                productImage: displayList[index].imagePath,
                              );
                            } else {
                              return SizedBox
                                  .shrink(); // Возвращаем пустой виджет, если индекс недопустим
                            }
                          },
                        ),
                      ),
                      ScrollableListTab(
                        tab: ListTab(
                          label: Text('Овощи'),
                          showIconOnList: true,
                          activeBackgroundColor: AppColors.maincolor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        body: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.6),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (_, index) {
                            if (index < displayList.length) {
                              return CustomContainer(
                                productTitle: displayList[index].name,
                                searchValue: editingController.text,
                                productImage: displayList[index].imagePath,
                              );
                            } else {
                              return SizedBox
                                  .shrink(); // Возвращаем пустой виджет, если индекс недопустим
                            }
                          },
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fixedSize: Size(160, 48),
          backgroundColor: AppColors.maincolor,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FaIcon(
              FontAwesomeIcons.bagShopping,
              color: Colors.white,
            ),
            Text(
              'Корзина 56 с',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
