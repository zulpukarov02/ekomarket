// import 'package:autocomplete_textfield/autocomplete_textfield.dart';
// import 'package:ekomarket/models/models.dart';
import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:flutter/material.dart';

class SearchWidjet extends StatefulWidget {
  const SearchWidjet({
    super.key,
    required this.editingController,
    required this.onChanged,
  });

  final TextEditingController editingController;
  final Function(String) onChanged;
  @override
  State<SearchWidjet> createState() => _SearchWidjetState();
}

class _SearchWidjetState extends State<SearchWidjet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: widget.onChanged,
        style: const TextStyle(color: AppColors.ekoblak),
        decoration: InputDecoration(
            labelText: "Быстрый поиск",
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide.none),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            prefixIconColor: Colors.purple),
      ),
    );
  }
}
