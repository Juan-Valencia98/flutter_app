import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            elevation: 10,
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/placeholder.gif'),
                  image: NetworkImage('https://picsum.photos/id/3/200/300'),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album, color: Colors.red),
                  title: Text("Titulo"),
                  subtitle: Text("Aqui va la descripcion"),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  title: Text("Titulo"),
                  subtitle: Text("Aqui va la descripcion"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
