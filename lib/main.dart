import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListScreen(),
    );
  }
}

class ListItem extends StatelessWidget {
  final Key key;
  final String tooltip;
  final String text;

  ListItem({
    required this.key,
    required this.tooltip,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: text,
      child: ListTile(
        key: key,
        title: Text(text),
        subtitle: Text(tooltip),
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget finder example'),
      ),
      body: ListView(
        children: [
          ListItem(
            key: Key('item_1'),
            tooltip: 'Item 1 Tooltip',
            text: 'Item 1 Text',
          ),
          ListItem(
            key: Key('item_2'),
            tooltip: 'Item 2 Tooltip',
            text: 'Item 2 Text',
          ),
        ],
      ),
    );
  }
}
