import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Выбирете подходящий товар'),
          centerTitle: true,
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  final List<String> items = List<String>.generate(20, (i) => 'Выбрать товар $i');

  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text('${items[index]}'),
          leading: Icon(Icons.wb_cloudy_sharp, color: Colors.blueAccent),
          trailing: Icon(Icons.add_box_outlined),
          onTap: (){
          },
        ),
      );
    },
  );
}