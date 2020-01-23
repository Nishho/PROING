import 'package:flutter/material.dart';
import 'package:proing/info_profes.dart';
import 'package:proing/src/preferencias_usuarios/preferencias_usuarios.dart';
import 'package:proing/src/widgets/card_swiper_widget.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';




class MisprofesoresPage extends StatelessWidget {

 final prefs = new PreferenciasUsuario();


  final ramos = ['Taller de Ingeniería de Software', 'Ingeniería de Requerimientos',
                 'Programación Orientada a Objetos', 'Ciberseguridad','Matemáticas I'];
  final nombres = [
   profesores[0].nomProf,
   profesores[1].nomProf,
   profesores[2].nomProf,
   profesores[3].nomProf
  ];               

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.black : Colors.blue,
        title: Text('Mis Profesores',
        style: TextStyle(
         fontFamily: 'Limelight-Regular',
        ),
       ),
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
       _crearFondo(context),
       _swiperTarjetas(context,nombres),
       ]
     ),
 
    );
  }





Widget _swiperTarjetas(context,nombres){

final size = MediaQuery.of(context).size;
final text1 = nombres[0];
final text2 = nombres[1];
final text3 = nombres[2];
final text4 = nombres[3];

  return SingleChildScrollView(
  
        child: Column(
              children: <Widget>[ 
                   CardSwiper(
                       images: [1,2,3,4
                      ],
          ),
          Container(
             child: Column(
               children: <Widget>[
                                Text('Profesor: $text1',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular'
                                      ),
                                  ),
                                Text('Asignatura: INF4540-1',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular',
                                      ),
                                      textAlign: TextAlign.left,                                
                                )
               ],
             ),
             width: size.width * 0.85,
             margin: EdgeInsets.symmetric(vertical: 10.0),
             padding: EdgeInsets.symmetric( vertical: 50.0),
             decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(5.0),
             boxShadow: <BoxShadow>[
               BoxShadow(
               color: Colors.black26,
               blurRadius :3.0,
               offset: Offset(0.0,5.0),
               spreadRadius: 3.0
               )
             ]
            ),
          
          ),
                    Container(
                      child: Column(
                        children: <Widget>[
                                Text('Profesor: $text2',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular'
                                      ),
                                  ),
                                Text('Asignatura: INF3340-1',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular',
                                      ),
                                      textAlign: TextAlign.left,  
                                )                         
                        ],
                      ),
             width: size.width * 0.85,
             margin: EdgeInsets.symmetric(vertical: 10.0),
             padding: EdgeInsets.symmetric( vertical: 50.0),
             decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(5.0),
             boxShadow: <BoxShadow>[
               BoxShadow(
               color: Colors.black26,
               blurRadius :3.0,
               offset: Offset(0.0,5.0),
               spreadRadius: 3.0
               )
             ]
            ),
          
          ),
                    Container(
                      child: Column(
                        children: <Widget>[
                                Text('Profesor: $text3',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular'
                                      ),
                                  ),
                                Text('Asignatura: INF4541-0',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular',
                                      ),
                                      textAlign: TextAlign.left,  
                                )                         
                        ],
                      ),
             width: size.width * 0.85,
             margin: EdgeInsets.symmetric(vertical: 10.0),
             padding: EdgeInsets.symmetric( vertical: 50.0),
             decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(5.0),
             boxShadow: <BoxShadow>[
               BoxShadow(
               color: Colors.black26,
               blurRadius :3.0,
               offset: Offset(0.0,5.0),
               spreadRadius: 3.0
               )
             ]
            ),
          
          ),
                    Container(
                      child: Column(
                        children: <Widget>[
                                Text('Profesor: $text4',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular'
                                      ),
                                  ),
                                Text('Asignatura: INF2241-1',
                                      style: TextStyle(
                                      fontFamily: 'Limelight-Regular',
                                      ),
                                      textAlign: TextAlign.left,  
                                )                         
                        ],
                      ),
             width: size.width * 0.85,
             margin: EdgeInsets.symmetric(vertical: 10.0),
             padding: EdgeInsets.symmetric( vertical: 50.0),
             decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(5.0),
             boxShadow: <BoxShadow>[
               BoxShadow(
               color: Colors.black26,
               blurRadius :3.0,
               offset: Offset(0.0,5.0),
               spreadRadius: 3.0
               )
             ]
            ),
          
          )
        ],
  ),
);
}


/*
Widget _buildItem(Ramo textTitle) {
  return new ListTile(
      title: new Text(textTitle.nombre),
      subtitle: new Text('Profesor: ${textTitle.nomProf}'),
      leading: new Icon(Icons.label_important),
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

/*
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
*/