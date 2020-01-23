import 'package:flutter/material.dart';
//import 'package:proing/info_usuario.dart';
import 'package:proing/src/preferencias_usuarios/preferencias_usuarios.dart';



class AjustesPage extends StatefulWidget {

  @override
  _AjustesPageState createState() => _AjustesPageState();
}

class _AjustesPageState extends State<AjustesPage> {
 
bool _colorSecundario = true;

final prefs = new PreferenciasUsuario();


  @override
 void initState() {
    super.initState();

   _colorSecundario = prefs.colorSecundario;
}



@override
Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        title: Text('Ajustes',
        style: TextStyle(
         fontFamily: 'Limelight-Regular',
       ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back_ios,
        ),
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
     body: Stack(
       children: <Widget>[
         _crearFondo( context ),
         new ListView(
          //children: usu.map(_buildItem).toList()
         ),
                           Container(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: SwitchListTile(
                         activeColor: Colors.black,
                         inactiveThumbColor: Colors.blue,
                         value: _colorSecundario,
                         title: Text ('Color Secundario',
                         style: TextStyle(
                           color: Colors.white,
                         ),
                         ),
                         onChanged: ( value ){
                          setState( () {
                          _colorSecundario = value;
                          prefs.colorSecundario = value; 
                           }
                           );
           },
         ),
        ),
        /// _loginForm(context),
       ],
     )
     );
  }
 

/*
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
*/

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
