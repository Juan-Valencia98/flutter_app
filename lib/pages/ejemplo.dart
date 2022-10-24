import 'package:flutter/material.dart';

class EjemploWidget extends StatefulWidget {
  const EjemploWidget({super.key});

  @override
  State<EjemploWidget> createState() => _EjemploWidgetState();
}

class _EjemploWidgetState extends State<EjemploWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("AppBar"),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home"),
              Text("Salir"),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Text("EndDrawer"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.network(
                "https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg"),
          ),
          Container(
            height: 20,
          ),
          titleSction,
          iconos,
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
                "Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior, Color? selectionColor})"),
          ),
        ],
      ),
    );
  }
}

Widget titleSction = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                "Titulo deaw aw dwe",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Descripcion pequenia",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text("41")
    ],
  ),
);

Widget iconos = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        child: Column(
          children: [
            Icon(
              Icons.alarm_add,
              size: 35,
              color: Colors.blue,
            ),
            Container(
              child: Text("CALL"),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Icon(
              Icons.favorite,
              size: 35,
              color: Colors.red,
            ),
            Container(
              child: Text("FAVORITO"),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Icon(
              Icons.beach_access,
              size: 35,
              color: Colors.green,
            ),
            Container(
              child: Text(
                "CELULAR",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
