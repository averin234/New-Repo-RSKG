import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatelessWidget {
  final List<String> items;
  final String labelText;
  final String? selectedItem;
  const MyDropDown(
      {super.key,
      required this.items,
      required this.labelText,
      this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownSearch<String>(
        popupProps: const PopupProps.menu(
          fit: FlexFit.loose,
        ),
        items: items,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onChanged: print,
        selectedItem: selectedItem,
      ),
    );
  }
}
