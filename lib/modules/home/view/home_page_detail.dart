import 'package:flutter/material.dart';

class HomePageDetail extends StatefulWidget {
  const HomePageDetail({Key? key}) : super(key: key);

  @override
  State<HomePageDetail> createState() => _HomePageDetailState();
}

class _HomePageDetailState extends State<HomePageDetail> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = <String>[];

  @override
  void initState() {
    items = duplicateItems;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_sharp),
          centerTitle: true,
          title: Text("Продукты")),
      body: Column(
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: SizedBox(
          //           width: 280,
          //           height: 50,
          //           child: TextField(
          //             onChanged: (value) {
          //               filterSearchResults(value);
          //             },
          //             controller: editingController,
          //             decoration: InputDecoration(
          //                 labelText: "Search",
          //                 hintText: "Search",
          //                 prefixIcon: Icon(Icons.search),
          //                 border: OutlineInputBorder(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(25.0)))),
          //           ),
          //         ),
          //       ),
          //       Spacer(),
          //       Text(
          //         'Отмена',
          //         style: TextStyle(fontSize: 20, color: Colors.black),
          //       )
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          TabBarView(),
          // Expanded(
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: items.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text('${items[index]}'),
          //       );
          //     },
          //   ),
          // ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 4.3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15),
                  itemCount: 8,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                'assets/images/momo.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Text(
                              'Морковь Нантская',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Spacer(),
                            Text(
                              '45c',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
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
                                        child: BottomSheetWidget(
                                          // order: order,
                                          divider: Divider(
                                            thickness: 4,
                                            height: 4,
                                            indent: 160,
                                            endIndent: 160,
                                          ),
                                          textApp: "rrrrr",
                                          textStyle: const TextStyle(
                                              color: Colors.red,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                          sizedBox: SizedBox(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateColor
                                                        .resolveWith((states) =>
                                                            Colors.green),
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
                                child:  Text(
                                  "Добавить",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: Size(160, 60), primary: Colors.green),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.add,
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

class OrderDetailsScreen {}

class TabBarView extends StatelessWidget {
  const TabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
          unselectedLabelColor: Colors.black45,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.green),
          tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black45, width: 1)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Все"),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black45, width: 1)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Фрукты"),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black45, width: 1)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Сухофрукты"),
                ),
              ),
            ),
          ]),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
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

class FructList extends StatelessWidget {
  const FructList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.imege,
    required this.trailing2,
  });
  final String title;
  final String subtitle;
  final String trailing;
  final String trailing2;
  final String imege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 400,
      child: Card(
        // color: Color(0xff),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white38, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 1,
        child: Center(
            child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/momo.png',
                      // fit: BoxFit.cover,
                      // width: 100,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        color: Colors.white,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Драконий фрукт"),
                  Text("Драконий фрукт"),
                  Spacer(),
                  Row(
                    children: [
                      Text("680"),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.add, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Colors.green, // <-- Button color
                          foregroundColor: Colors.red, // <-- Splash color
                        ),
                      ),
                      Text("2"),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.add, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Colors.green, // <-- Button color
                          foregroundColor: Colors.red, // <-- Splash color
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )

            // ListTile(
            //     leading: Image.asset(
            //       imege,
            //       // width: 100,
            //     ),
            //     title: Text(title),
            //     subtitle: Text(subtitle),
            //     trailing: Column(
            //       children: [Text(trailing), Text(trailing2)],
            //     )),
            ),
      ),
    );
  }
}
