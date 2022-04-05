import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  Color backgroundColor;
  Widget body;

  DraftPage({this.backgroundColor = Colors.blue, required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("Demo Multibloc in Multipage App"),
      ),
      body: body,
    );
  }
}
