import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String _contrasena = '';
  String _nombres = '';
  String _correo = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inputs")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Escribe aqui tu nombre',
              labelText: 'Nombres y Apellidos',
              icon: Icon(Icons.abc),
              iconColor: Colors.amber,
              suffixIcon: Icon(Icons.accessibility),
            ),
            onChanged: (input) {
              setState(() {
                _nombres = input;
              });
            },
          ),
          Divider(),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Escribe aqui correo electronico',
              labelText: 'Correo',
              suffixIcon: Icon(Icons.accessibility),
            ),
            onChanged: (input) {
              setState(() {
                _correo = input;
              });
            },
          ),
          Divider(),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Escribe aqui la contraseña',
              labelText: 'Contraseña',
              suffixIcon: Icon(Icons.password),
            ),
            onChanged: (input) {
              setState(() {
                _contrasena = input;
              });
            },
          ),
          ListTile(
            title: Text('Nombre es: $_nombres'),
            subtitle: Text('Correo es: $_correo'),
          )
        ],
      ),
    );
  }
}
