import 'package:flutter/cupertino.dart';
import 'package:hola_mundo_1/pages/alertas.dart';
import 'package:hola_mundo_1/pages/avatar.dart';
import 'package:hola_mundo_1/pages/lista_productos.dart';

import '../Pages/ejemplo.dart';
import '../Pages/home.dart';
import '../pages/calculadora.dart';
import '../pages/card.dart';
import '../pages/container.dart';
import '../pages/input.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeWidget(),
    'ejemplo': (BuildContext context) => EjemploWidget(),
    'alertas': (BuildContext context) => AlertasWidget(),
    'avatar': (BuildContext context) => AvatarWidget(),
    'container': (BuildContext context) => ContainerWidget(),
    'input': (BuildContext context) => InputWidget(),
    'card': (BuildContext context) => CardWidget(),
    'lista_productos': (BuildContext context) => ListaProductosWidget(),
    'calculadora': (BuildContext context) => CalculadoraPage(),
  };
}
