import 'package:ekomarket/modules/corzina/corzina.dart';
import 'package:ekomarket/modules/history/history.dart';
import 'package:ekomarket/modules/home/view/home_page_detail.dart';
import 'package:ekomarket/modules/info/view/info_page.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

final List<Category> categories = [
  Category(name: "Фрукты", imagePath: "assets/images/image 1.png"),
  Category(name: "Сухофрукты", imagePath: "assets/images/image 2.png"),
  Category(name: "Овощи", imagePath: "assets/images/image 3.png"),
  Category(name: "Зелень", imagePath: "assets/images/image 4.png"),
  Category(name: "Чай кофе", imagePath: "assets/images/image 5.png"),
  Category(name: "Молочные продукты", imagePath: "assets/images/image 6.png"),
];

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bacrounColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appBar,
        title: const Center(
          child: Text(
            'Эко-Маркет',
            style: TextStyle(
              color: AppColors.appBartext,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePageDetail()),
              );
            },
            child: Card(
              color: Colors.red,
              elevation: 2.0,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      categories[index].imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        categories[index].name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
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

class BottomNavigeshinbarWidget extends StatefulWidget {
  const BottomNavigeshinbarWidget({super.key});

  @override
  State<BottomNavigeshinbarWidget> createState() =>
      _BottomNavigeshinbarWidgetState();
}

class _BottomNavigeshinbarWidgetState extends State<BottomNavigeshinbarWidget> {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    const HomePage(), // Replace with your actual page widgets
    const CartScreen(),
    const History(),
    const InfoPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.green,
        unselectedItemColor: Colors.black38,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_toggle_off),
            label: 'История',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_help),
            label: 'Инфо',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
