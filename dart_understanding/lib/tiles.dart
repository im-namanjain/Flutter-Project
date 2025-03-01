import 'package:dart_understanding/callingconstructor.dart';
import 'package:flutter/material.dart';

class Tiles extends StatefulWidget {
  const Tiles({super.key});

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  ConstList list = ConstList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.student.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text('${List.ListName(index)}'),
            subtitle: Text('${List.ListRollNo(index)}'),
          );
        },
      ),
    );
  }
}
