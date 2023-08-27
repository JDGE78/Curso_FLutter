import 'package:flutter/material.dart';
import 'package:http_get/helpers/item_request.dart';
import 'package:http_get/widgets/request_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final req = const RequestItem(url: 'https://jsonplaceholder.typicode.com/posts/10');

  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Get Request Dani'),
        ),
        body: Center(
          child: HTTPWidget(req),
        ),
      ),
    );
  }
}


