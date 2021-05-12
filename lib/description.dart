import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DescriptionPage extends StatelessWidget {
  // names : List<String> = ['Rick', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.red,
                ),
                onPressed: () {})
          ],
          title: Text('Personaje xxxxx'),
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
        body: ListView(
          children: [
            Card(
              color: Color(0xFF24282F),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  ListTile(
                    // ignore: deprecated_member_use
                    leading: FlatButton(
                        onPressed: () {
                          Share.share('Hola comparto esto contigo');
                        },
                        child: Icon(
                          Icons.share,
                          color: Colors.red,
                        )),
                    title: const Text('Card title 1',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'descripcion del personaje que el usuario eligio para conocer o compartir sobre el.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Image.network(
                    'https://images-na.ssl-images-amazon.com/images/I/91MteSqsrJL.jpg',
                    height: 250,
                    width: 150,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
