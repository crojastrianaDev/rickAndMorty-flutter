import 'package:flutter/material.dart';
import 'package:taller/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text('Login'),
        backgroundColor: Color(0xFF3C3E44),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.app_registration),
            onPressed: () {
              Navigator.of(context).pushNamed('/register');
            },
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
        ),
        /* borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),*/
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 20, 5, 30),
        height: 350,
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
                    obscureText: false,
                    autofocus: true,
                    decoration: const InputDecoration(
                      hintText: 'Usuario',
                      labelText: 'Nombre de usuario',
                      icon: Icon(
                        Icons.person,
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
                      hintText: 'Contraseña',
                      labelText: 'Cotraseña',
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
                      child: Text('Ingresar'),
                    ),
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Si no tienes cuenta, da click en el icono de registrar.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
