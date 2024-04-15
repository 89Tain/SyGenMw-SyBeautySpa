// ignore_for_file: must_be_immutable

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';


class SearchableDropDownCustom extends StatelessWidget {
  
  List<String> items=[];
  String hint='';
  TextEditingController controller = TextEditingController();
  Icon icon=Icon(Icons.cabin);


  SearchableDropDownCustom({Key? key, required this.items, required this.hint, required this.controller,this.icon=const Icon(Icons.search)});
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(top:10,bottom: 10),
      child: Container(
        height: 40,
        color: Colors.grey[50],
        child: Padding(
                padding: const EdgeInsets.only(left: 10,),
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownSearch<String>(
                        showSearchBox: true,
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        items: items,
                        dropdownSearchDecoration:  InputDecoration(
                          border: InputBorder.none,
                          labelText: '  $hint',
                          labelStyle: TextStyle(color: Colors.black,fontSize: 20)
                        ),
                        //popupItemDisabled: (String s) => s.startsWith('I'),
                        onChanged:(value){controller.text=value!;} ,
                        selectedItem: controller.text,
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
