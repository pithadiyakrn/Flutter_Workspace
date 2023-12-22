import 'package:flutter/material.dart';

class MyApp78 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: MyListView(),
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> names = [];
  String selectedName = '';
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: Column(
        children: [
          TextField(
            controller: editingController,
            decoration: InputDecoration(
              hintText: 'Enter a name',
            ),
            onSubmitted: (value) {
              addName(value);
            },
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDetails(names[index]);
                  },
                  onLongPress: () {
                    showContextMenu(index);
                  },
                  child: ListTile(
                    title: Text(names[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addName(String name) {
    setState(() {
      names.add(name);
      editingController.clear();
    });
  }

  void showDetails(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Details'),
          content: Text('Selected Name: $name'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void showContextMenu(int index) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(position.dx, position.dy, position.dx, position.dy),
      items: [
        PopupMenuItem(
          value: 'delete',
          child: Text('Delete Item'),
        ),
        PopupMenuItem(
          value: 'edit',
          child: Text('Edit Item'),
        ),
      ],
    ).then((value) {
      if (value == 'delete') {
        showDeleteConfirmationDialog(index);
      } else if (value == 'edit') {
        showEditDialog(index);
      }
    });
  }

  void showDeleteConfirmationDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Item'),
          content: Text('Are you sure you want to delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                deleteItem(index);
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void showEditDialog(int index) {
    editingController.text = names[index];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: TextField(
            controller: editingController,
            decoration: InputDecoration(
              hintText: 'Enter new name',
            ),
            onSubmitted: (value) {
              editItem(index, value);
              Navigator.of(context).pop();
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                editItem(index, editingController.text);
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void deleteItem(int index) {
    setState(() {
      names.removeAt(index);
    });
  }

  void editItem(int index, String newName) {
    setState(() {
      names[index] = newName;
      editingController.clear();
    });
  }
}
