import 'package:flutter/material.dart';
import 'package:ui_tasarim/constants/imageItems.dart';

class TodoListView extends StatelessWidget {
  final List<String> items;
  final List<bool> isCheckedList;
  final Function(int) onDelete;
  final Function(int, bool) onCheckToggle;

  const TodoListView({
    required this.items,
    required this.isCheckedList,
    required this.onDelete,
    required this.onCheckToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 10,
          child: ListTile(
            leading: Checkbox(
              value: isCheckedList[index],
              onChanged: (value) {
                onCheckToggle(index, value!);
              },
            ),
            title: Text(
              items[index],
              style: TextStyle(
                decoration: isCheckedList[index]
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            trailing: SizedBox(
              width: PaddingConstanst().containerBasicSize,
              height: PaddingConstanst().containerBasicSize,
              child: IconButton(
                onPressed: () => onDelete(index),
                icon: const Icon(Icons.delete),
              ),
            ),
          ),
        );
      },
    );
  }
}
