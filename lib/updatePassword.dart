import 'package:flutter/material.dart';

class UpdatePassword extends StatelessWidget {
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
        title: Text('Cambio de contraseña'),
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
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 20, 5, 30),
        height: 300,
        width: 300,
        child: Card(
          color: Color(0xFF24282F),
          child: Column(
            children: <Widget>[
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  TextFormField(
                    obscureText: true,
                    autofocus: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña actual',
                      labelText: 'Actual',
                      icon: Icon(
                        Icons.lock_open,
                        color: Colors.white,
                      ),
                      fillColor: Colors.yellow,
                      hoverColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña nueva',
                      labelText: 'Cotraseña nueva',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      fillColor: Colors.white70,
                      hoverColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      child: Text('Modificar'),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
