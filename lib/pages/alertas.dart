import 'package:flutter/material.dart';

class AlertasWidget extends StatefulWidget {
  const AlertasWidget({super.key});

  @override
  State<AlertasWidget> createState() => _AlertasWidgetState();
}

class _AlertasWidgetState extends State<AlertasWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alertas",
          strutStyle: StrutStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Ejecutar Alerta!!!"),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
          ),
        ),
      ),
    );
  }
}

_mostrarAlerta(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Titulo Alerta!!"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Aqui se mensiona la descripcion ...."),
            FlutterLogo(
              size: 150,
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Button 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Button 2"),
          ),
        ],
      );
    },
  );
}
