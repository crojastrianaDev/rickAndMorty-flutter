import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // names : List<String> = ['Rick', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text('Home'),
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
          /*Container(
            height: 250,
            child: Card(
              child: Image.network(
                  'https://images-na.ssl-images-amazon.com/images/I/91MteSqsrJL.jpg'),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),*/
          Container(
            height: 450,
            child: Card(
              color: Color(0xFF24282F),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: [
                          Image.network(
                            'https://images-na.ssl-images-amazon.com/images/I/91MteSqsrJL.jpg',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Rick And Morty',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Serie animada con 450 capitulos',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'descripcion del personaje que el usuario eligio para conocer o compartir sobre el. lorem ipsum lorem',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                  /*
                  Image.network(
                      'https://images-na.ssl-images-amazon.com/images/I/91MteSqsrJL.jpg')
                  */
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          )
        ],
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.menu_open),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF24282F)),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: Image.network(
                    'https://images-na.ssl-images-amazon.com/images/I/91MteSqsrJL.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Nombre',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Text('Morty Smith'),
            leading: Icon(Icons.home),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Rick Sánchez'),
            leading: Icon(Icons.home),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Summer Smith'),
            leading: Icon(Icons.home),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Squanchy'),
            leading: Icon(Icons.home),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Beth Smith'),
            leading: Icon(Icons.home),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Jeey Smith'),
            leading: Icon(Icons.home),
            onTap: () => {
              Navigator.of(context).pushNamed('/description/id'),
            },
          )
        ],
      ),
    );
  }
}