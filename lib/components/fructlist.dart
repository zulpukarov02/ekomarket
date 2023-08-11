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
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 3),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: ListTile(
          leading: Card(
            elevation: 3,
            child: Image.asset(imege),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Column(
            children: [Text(trailing), Text(trailing2)],
          )),
    );
  }
}
