import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_api/loadData.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

// İstek 
Future<LoadData> apiCall() async {
  // ignore: unused_local_variable
  var url = 'https://github.com/Mucahid-Canbey/flutter_basic_json/edit/main/api.json';
  final response = await http.get(url);

  if (response == 200) {
    return LoadData.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
