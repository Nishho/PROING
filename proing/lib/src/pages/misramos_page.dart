import 'package:flutter/material.dart';
import 'package:proing/info_ramos.dart';
import 'package:proing/src/preferencias_usuarios/preferencias_usuarios.dart';



class MisramosPage extends StatelessWidget {

  final prefs = new PreferenciasUsuario();


  final ramos = ['Taller de Ingeniería de Software', 'Ingeniería de Requerimientos',
                 'Programación Orientada a Objetos'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        title: Text('Mis Ramos',
        style: TextStyle(
         fontFamily: 'Limelight-Regular',
       ),)
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
        new ListView(
          children: infRamos.map(_buildItem).toList()
        ),
        /// _loginForm(context),
       ],
     )
     );
  }


/*
  List<Widget> _crearItemsRamos(){

    return ramos.map( ( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item ),
            //leading: Icon( Icons.exit_to_app),
            trailing: Icon( Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );

    }).toList();
    
  }
*/



Widget _buildItem(Detalle textTitle) {
  return new ListTile(
      title: new Text(textTitle.nombre, style: TextStyle(
         fontFamily: 'Limelight-Regular',
       )
       ),
      subtitle: new Text('Notas: ${textTitle.notas}' 'Asistencia: ${textTitle.asistencia}'),
      leading: new Icon(Icons.label_important),
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