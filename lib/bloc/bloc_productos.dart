import 'dart:convert';

import '../models/productos_models.dart';
import 'package:http/http.dart' as http;

class BlocProductos {
  Future<List<ModelsProductos>> listaProductos() async {
    final _url = Uri.parse("https://api.escuelajs.co/api/v1/products/");
    final res = await http.get(_url);
    final modelo = json.decode(res.body);
    final List<ModelsProductos> listaProductos = [];
    if (modelo == null) return [];
    modelo.forEach((producto) {
      final temp = ModelsProductos.fromJson(producto);
      listaProductos.add(temp);
    });
    return listaProductos;
  }
}
