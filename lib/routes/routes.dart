import 'package:flutter/cupertino.dart';
import 'package:hola_mundo_1/pages/alertas.dart';
import 'package:hola_mundo_1/pages/avatar.dart';

import '../Pages/ejemplo.dart';
import '../Pages/home.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeWidget(),
    'ejemplo': (BuildContext context) => EjemploWidget(),
    'alertas': (BuildContext context) => AlertasWidget(),
    'avatar': (BuildContext context) => AvatarWidget(),
  };
}
