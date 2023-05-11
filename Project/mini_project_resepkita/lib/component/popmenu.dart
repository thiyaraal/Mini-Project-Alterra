import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:provider/provider.dart';

enum SampleItem { itemOne, itemTwo }

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    final resepProvider = Provider.of<TodoListProvider>(context);
    return Center(
        child: PopupMenuButton<SampleItem>(
      initialValue: selectedMenu,
      // Callback that sets the selected popup menu item.
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text('edit'),
        ),
        PopupMenuItem<SampleItem>(
          onTap: () {
            resepProvider.removeTodo();
          },
          value: SampleItem.itemTwo,
          child: Text('hapus'),
        ),
      ],
    ));
  }
}
