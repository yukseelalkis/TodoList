import 'package:flutter/material.dart';
import 'package:ui_tasarim/home_screens.dart';

abstract class StateHomeModel extends State<HomeScreen> {
  List<bool> isCheckedList = [];
  List<String> items = [];
  late TextEditingController addController;
  late TextEditingController searchController;
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    addController = TextEditingController();
    searchController = TextEditingController();
    fullList();
  }

  @override
  void dispose() {
    addController.dispose();
    super.dispose();
  }

  void fullList() {
    filteredItems = items;
  }

  void searchItems(String query) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void addItem() {
    setState(() {
      if (addController.text.isNotEmpty) {
        items.add(addController.text);
        isCheckedList.add(false);
        fullList();
        addController.clear();
      }
    });
  }

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
      isCheckedList.removeAt(index);
      fullList();
    });
  }

  void toggleCheck(int index, bool value) {
    setState(() {
      isCheckedList[index] = value;
    });
  }
}
