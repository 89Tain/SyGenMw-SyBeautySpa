import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';

class SearchableDropDownCustom extends StatelessWidget {
  final List<String> items;
  final String hint;
  final TextEditingController controller;
  final Icon icon;

  const SearchableDropDownCustom({
    super.key,
    required this.items,
    required this.hint,
    required this.controller,
    this.icon = const Icon(Icons.search),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 40,
        color: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Row(
            children: [
              Expanded(
                // child: DropdownSearch<String>(
                //   items: items,
                //   onChanged: (value) {
                //     if (value != null) controller.text = value;
                //   },
                //   selectedItem: controller.text,
                //   // Assume 'showSearchBox' is always true by default
                //   // For decoration and other settings, check the latest documentation
                // ),
                child: DropdownSearch<String>(
                  items: items, // List of cities
                  onChanged: (value) {
                    if (value != null) {
                      controller.text = value;
                    } else {
                      controller.text = items.first;
                    }
                  },
                  selectedItem: controller.text,
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "Select city",
                      labelStyle: const TextStyle(color: Colors.pink),
                      labelText: "Select city",
                      // labelText: "Select city", // Placeholder/hint text
                      fillColor: Colors.grey[80], // Background color
                      filled: true, // Needed to apply fillColor
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal:
                              12), // Adjust padding for visual alignment
                    ),
                  ),
                  popupProps: const PopupProps<String>.menu(
                      showSearchBox:
                          true, // Optional: if you want to enable searching within the dropdown
                      fit: FlexFit.tight),
                )

                // popupProps: const PopupProps.menu(
                //   showSearchBox: true, // Optional: if you want to enable searching within the dropdown
                // ),
                // )

                ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
