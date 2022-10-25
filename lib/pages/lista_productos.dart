import 'package:flutter/material.dart';
import 'package:hola_mundo_1/bloc/bloc_productos.dart';

import '../models/productos_models.dart';

class ListaProductosWidget extends StatefulWidget {
  const ListaProductosWidget({super.key});

  @override
  State<ListaProductosWidget> createState() => _ListaProductosWidgetState();
}

class _ListaProductosWidgetState extends State<ListaProductosWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Productos")),
      body: FutureBuilder(
        future: BlocProductos().listaProductos(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ModelsProductos>> snapshot) {
          final data = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        FadeInImage(
                          placeholder: AssetImage('assets/placeholder.gif'),
                          image: NetworkImage("${data[i].category!.image}"),
                        ),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Container(
                                width: 300,
                                height: 50,
                                child: ListTile(
                                  selectedColor: Colors.amber,
                                  title: Text("${data[i].title}"),
                                  subtitle: Text("${data[i].description}"),
                                ),
                              ),
                              Container(
                                child: Text("${data[i].price} Bs."),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                  ;
                });
          } else {
            return Container(
              child: Text("No retorno nada"),
            );
          }
        },
      ),
    );
  }
}
