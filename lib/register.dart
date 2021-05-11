import 'package:flutter/material.dart';
import 'package:taller/routes.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          title: Text('Registrarme'),
          backgroundColor: Color(0xFF3C3E44),
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
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 5, 30),
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
                            hintText: 'Nombre',
                            labelText: 'Nombre completo',
                            icon: Icon(Icons.person, color: Colors.white),
                            fillColor: Colors.yellow,
                            hoverColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        TextFormField(
                          obscureText: false,
                          decoration: const InputDecoration(
                            hintText: 'Usuario',
                            labelText: 'Nombre de usuario',
                            icon: Icon(Icons.person_add_alt_1_outlined,
                                color: Colors.white),
                            fillColor: Colors.yellow,
                            hoverColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Celular',
                            labelText: '+xx xxx xxx xxx',
                            icon: Icon(Icons.phone, color: Colors.white),
                            fillColor: Colors.yellow,
                            hoverColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            labelText: 'user@login.ecom',
                            icon: Icon(Icons.email, color: Colors.white),
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
                            icon: Icon(Icons.lock, color: Colors.white),
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
                            onPressed: _onPressed,
                            child: Text('Ingresar'),
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  void _onPressed() {}
}
