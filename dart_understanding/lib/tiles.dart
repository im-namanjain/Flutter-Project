import 'package:dart_understanding/callingconstructor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert' as convert;

class Tiles extends StatefulWidget {
  const Tiles({super.key});

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  @override
  void initState() {
    super.initState();
  }

  getHttpData() async {
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    // print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = convert.jsonDecode(response.body);
      // var itemCount = jsonResponse['totalItems'];
      print(jsonResponse[0]["title"]);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getDioData() async {
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/photos');
    print(response.data[0]["title"]);
  }

  ConstList list = ConstList();
  @override
  Widget build(BuildContext context) {
    getDioData();
    return Scaffold(
      body: ListView.builder(
        itemCount: list.student.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text('${list.listName(index)}'),
            subtitle: Text('${list.listRollNo(index)}'),
          );
        },
      ),
    );
  }
}
