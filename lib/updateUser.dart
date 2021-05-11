import 'package:flutter/material.dart';

class UpdateUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          actions: [IconButton(icon: Icon(Icons.clear), onPressed: () {})],
          title: Text('Modificar datos'),
          backgroundColor: Color(0xFF3C3E44),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.zero,
              topRight: Radius.zero,
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
        ),
        body: ListView());
  }
}
