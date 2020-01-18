import 'package:flutter/material.dart';
import 'package:proing/info_usuario.dart';



class AjustesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes',
        style: TextStyle(
         fontFamily: 'Limelight-Regular',
       ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
     body: Stack(
       children: <Widget>[
         _crearFondo( context ),
         new ListView(
          children: usu.map(_buildItem).toList()
        ),
        /// _loginForm(context),
       ],
     )
     );
  }
}


Widget _buildItem(Usuario textTitle) {
  return new ListTile(
      title: new Text(textTitle.nombre),
      subtitle: new Text('Correo: ${textTitle.correo}'),
      leading: new Icon(Icons.perm_contact_calendar),
      onTap: (){
        print(textTitle.nombre);
      },
  );
}


Widget _crearFondo(BuildContext context){

  final size = MediaQuery.of(context).size;

  final fondoBeige = Container(
    height: size.height * 1,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: <Color> [
        Color.fromRGBO(16, 50, 127, 1.0),
        Color.fromRGBO(22, 102, 160, 1.0),
        Color.fromRGBO(75, 204, 208, 1.0)
        ]
      )    
    ),
  );

  return fondoBeige;
}