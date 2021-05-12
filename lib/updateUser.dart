import 'package:flutter/material.dart';

class UpdateUser extends StatelessWidget {
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {},
                            child: Text('Modificar'),
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
}
