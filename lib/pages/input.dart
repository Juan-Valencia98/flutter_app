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
  bool _estado = true;
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
              suffixIcon: IconButton(
                icon: Icon(Icons.email),
                onPressed: () {},
              ),
            ),
            onChanged: (input) {
              setState(() {
                _correo = input;
              });
            },
          ),
          Divider(),
          TextField(
            obscureText: _estado,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Escribe aqui la contraseña',
              hintStyle: TextStyle(color: Color.fromARGB(103, 255, 193, 7)),
              labelText: 'Contraseña',
              labelStyle: TextStyle(color: Colors.orange),
              suffixIcon: IconButton(
                icon: Icon(
                  _estado
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined,
                  color: Colors.orange,
                ),
                onPressed: () {
                  setState(() {
                    _estado = !_estado;
                  });
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange),
              ),
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
