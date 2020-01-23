import 'package:flutter/material.dart';
import 'package:proing/src/preferencias_usuarios/preferencias_usuarios.dart';



class EdificiosPage extends StatelessWidget {

final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        title: Text('Edificios PUCV',
        style: TextStyle(
         fontFamily: 'Limelight-Regular',
       ),),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        child: Icon( Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
     body: Stack(
       children: <Widget>[
         _crearFondo( context ),
        /// _loginForm(context),
       ],
     )
     );
  }




Widget _crearFondo(BuildContext context){

  final size = MediaQuery.of(context).size;

  final fondoBeige = Container(
    height: size.height * 1,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: (prefs.colorSecundario) ? <Color> [
        Color.fromRGBO(70, 9, 116, 1.0),
        Color.fromRGBO(130, 39, 198, 1.0),
        Color.fromRGBO(183, 107, 241, 1.0)
        ]
        :<Color> [
        Color.fromRGBO(16, 50, 127, 1.0),
        Color.fromRGBO(22, 102, 160, 1.0),
        Color.fromRGBO(75, 204, 208, 1.0)
        ]
      )    
    ),
  );

  return fondoBeige;
}
}