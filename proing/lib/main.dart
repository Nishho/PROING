//importaciones de terceros
import 'package:flutter/material.dart';
import 'package:proing/src/pages/ajustes_page.dart';
import 'package:proing/src/pages/avisos_page.dart';
import 'package:proing/src/pages/calendario_page.dart';
import 'package:proing/src/pages/edificios_page.dart';
import 'package:proing/src/pages/infopucv_page.dart';


//NO SE QUE IMPORTACION ES (NO ENTENDÍ)
import 'package:proing/src/pages/miperfil_page.dart';

//mis importaciones
import 'package:proing/src/pages/login_page.dart';
import 'package:proing/src/pages/home_page.dart';
import 'package:proing/src/bloc/provider.dart';
import 'package:proing/src/pages/logros_page.dart';
import 'package:proing/src/pages/misprofesores_page.dart';
import 'package:proing/src/pages/misramos_page.dart';
import 'package:proing/src/pages/votacion_page.dart';
 

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


  return Provider(
      child:    MaterialApp(
      title: 'Material App',
      initialRoute: 'login',
        routes: {
          'login'     : (BuildContext context ) => LoginPage(),
          'home'      : (BuildContext context) => HomePage(),
          'misramos'  : (BuildContext context) => MisramosPage(),
          'votacion'  : (BuildContext context) => VotacionPage(),
          'avisos'    : (BuildContext context) => AvisosPage(),
          'profesores': (BuildContext context) => MisprofesoresPage(),
          'logros'    : (BuildContext context) => LogrosPage(),
          'ajustes'   : (BuildContext context) => AjustesPage(),
          'infopucv'  : (BuildContext context) => InfopucvPage(),
          'edificios' : (BuildContext context) => EdificiosPage(),
          'calendario': (BuildContext context) => CalendarioPage(),
          'miperfil'  : (BuildContext context) => MiPerfil(),
        },
    ),
  );
    
    

  }
}