import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'ejemplo');
            },
            title: Text("Ejemplo"),
            subtitle: Text("Pequeño ejemplo de widget"),
            leading: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.orange[50],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'alertas');
            },
            title: Text("Alertas"),
            subtitle: Text("Ejemplos de alertas"),
            leading: Icon(
              Icons.add_alert,
              color: Colors.orange,
            ),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.orange[50],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'avatar');
            },
            title: Text("Avatar"),
            subtitle: Text("Ejemplos de avatar"),
            leading: Icon(
              Icons.accessibility,
              color: Colors.orange,
            ),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.orange[50],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'container');
            },
            title: Text("Container"),
            subtitle: Text("Ejemplos de container"),
            leading: Icon(
              Icons.build_circle,
              color: Colors.orange,
            ),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.orange[50],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'input');
            },
            title: Text("Input"),
            subtitle: Text("Ejemplos de Input"),
            leading: Icon(
              Icons.receipt,
              color: Colors.orange,
            ),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.orange[50],
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'card');
            },
            title: Text("Card"),
            subtitle: Text("Ejemplos de Cards"),
            leading: Icon(
              Icons.folder_open,
              color: Colors.orange,
            ),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.orange[50],
          ),
        ],
      ),
    );
  }
}
