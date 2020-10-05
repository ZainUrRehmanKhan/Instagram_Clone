import 'package:flutter/material.dart';

class NewMessagePage extends StatefulWidget {
  @override
  _NewMessagePageState createState() => _NewMessagePageState();
}

class _NewMessagePageState extends State<NewMessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        title: Text('New Message', style: TextStyle(fontWeight: FontWeight.w300)),
      ),
    );
  }
}
