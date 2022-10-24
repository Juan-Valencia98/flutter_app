import 'package:flutter/material.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({super.key});
  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Avartars"),
          actions: [
            Container(
              padding: EdgeInsets.all(6),
              child: CircleAvatar(
                child: Text("MV"),
                backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: CircleAvatar(
                child: Text("JP"),
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage("https://i.pravatar.cc/300"),
            placeholder: AssetImage('assets/placeholder.gif'),
            fadeInDuration: Duration(seconds: 15),
          ),
        ));
  }
}
