import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:taller/models/characterModel.dart';
import 'package:taller/models/chatacterApi.dart';
import 'package:share/share.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  String id;
  MyApp(this.id, {Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState(id);
}

class _MyAppState extends State<MyApp> {
  Future<Character> futureCharacter;
  var apiCharacter = ApiCharacter();
  String id;
  _MyAppState(this.id);

  @override
  void initState() {
    super.initState();
    futureCharacter = apiCharacter.fetchCharacter(this.id);
  }

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
          title: Text('Personaje'),
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
              margin: EdgeInsets.fromLTRB(10, 20, 5, 30),
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
                    title: FutureBuilder<Character>(
                      future: futureCharacter,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data.name,
                              style: TextStyle(color: Colors.white));
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }

                        return CircularProgressIndicator();
                      },
                    ),
                    subtitle: FutureBuilder<Character>(
                      future: futureCharacter,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data.status,
                              style: TextStyle(color: Colors.white));
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }

                        return CircularProgressIndicator();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FutureBuilder<Character>(
                      future: futureCharacter,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                              'Location: ' +
                                  snapshot.data.location.name +
                                  '\nEspecies: ' +
                                  snapshot.data.species +
                                  '\nGender: ' +
                                  snapshot.data.gender +
                                  '\nOrigin: ' +
                                  snapshot.data.origin.name,
                              style: TextStyle(color: Colors.white));
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }

                        return CircularProgressIndicator();
                      },
                    ),
                  ),
                  FutureBuilder(
                      future: futureCharacter,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Image.network(
                            snapshot.data.image,
                            height: 250,
                            width: 200,
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }

                        return CircularProgressIndicator();
                      })
                ],
              ),
            )
          ],
        ));
  }
}
