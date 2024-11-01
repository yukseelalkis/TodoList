import 'package:flutter/material.dart';
import 'package:ui_tasarim/constants/imageItems.dart';
import 'package:ui_tasarim/product/language/language_items.dart';
import 'package:ui_tasarim/state_manage/state_manage_home.dart';
import 'package:ui_tasarim/widgets/home_drawe.dart';
import 'package:ui_tasarim/widgets/home_text_field.dart';
import 'package:ui_tasarim/widgets/image_view.dart';
import 'package:ui_tasarim/widgets/title_alignment.dart';
import 'package:ui_tasarim/widgets/to_do_list_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends StateHomeModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems().homeTitle),
        actions: [
          Padding(
            padding: PaddingItems().basicPadding,
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: UserPng(name: ImageItems().userLogo),
            ),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: Column(
        children: [
          MyHomeTextField(
            onChanged: searchItems,
            controller: searchController,
            hintText: LanguageItems().homeTextfieldHint,
            icon: const Icon(Icons.search),
          ),
          const TitleAlignment(),
          Expanded(
            child: TodoListView(
              items: filteredItems,
              isCheckedList: isCheckedList,
              onDelete: deleteItem,
              onCheckToggle: toggleCheck,
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: PaddingItems().basicPadding2x,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: PaddingConstanst().standartPaddingvertical,
                      right: PaddingConstanst().standartPaddingvertical),
                  child: MyHomeTextField(
                      hintText: LanguageItems().homeTextfieldAdd,
                      controller: addController)),
            ),
            FloatingActionButton(
              onPressed: addItem,
              child: const Icon(Icons.add_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
