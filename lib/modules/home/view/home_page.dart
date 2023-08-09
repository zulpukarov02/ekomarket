import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Эко-Маркет')),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15),
            itemCount: 8,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Name',
                      // textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              );
            }),
        bottomNavigationBar: BottomNavigeshinbarWidget());
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    const List<Widget> _pages = <Widget>[];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      fixedColor: Colors.green,
      unselectedItemColor: Colors.black38,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart),
          label: 'Camera',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.live_help),
          label: 'Chats',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
