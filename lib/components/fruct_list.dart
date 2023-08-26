import 'package:flutter/material.dart';

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
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
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
          ),
        ),
      ),
    );
  }
}
