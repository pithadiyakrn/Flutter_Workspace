import 'package:flutter/material.dart';



class MyApp68 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListWithContextMenu(),
    );
  }
}

class ListWithContextMenu extends StatefulWidget {
  @override
  _ListWithContextMenuState createState() => _ListWithContextMenuState();
}

class _ListWithContextMenuState extends State<ListWithContextMenu> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('program 68'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
            trailing: PopupMenuButton<String>(
              onSelected: (value) {
                _handleMenuItemSelected(value, index);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'edit',
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'view',
                    child: ListTile(
                      leading: Icon(Icons.visibility),
                      title: Text('View'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'delete',
                    child: ListTile(
                      leading: Icon(Icons.delete),
                      title: Text('Delete'),
                    ),
                  ),
                ];
              },
            ),
          );
        },
      ),
    );
  }

  void _handleMenuItemSelected(String value, int index) {
    switch (value) {
      case 'edit':
        _editItem(index);
        break;
      case 'view':
        _viewItem(index);
        break;
      case 'delete':
        _deleteItem(index);
        break;
    }
  }

  void _editItem(int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditItemScreen(item: items[index])),
    );

    if (result != null) {
      setState(() {
        items[index] = result;
      });
    }
  }

  void _viewItem(int index) {
    print('View item: ${items[index]}');
    // Implement your view logic here
  }

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
    print('Delete item: ${items[index]}');
    // Implement your delete logic here
  }
}

class EditItemScreen extends StatefulWidget {
  final String item;

  EditItemScreen({required this.item});

  @override
  _EditItemScreenState createState() => _EditItemScreenState();
}

class _EditItemScreenState extends State<EditItemScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Item'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _controller.text);
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
