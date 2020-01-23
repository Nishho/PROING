import 'package:flutter/material.dart';

//mis importaciones

//import 'package:proing/src/bloc/provider.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //final bloc = Provider.of(context);

    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('Menu Principal',
       style: TextStyle(
         fontFamily: 'Limelight-Regular',
       ),)
        ),
        body: Stack(
       children: <Widget>[ 
         _crearFondo( context ),
         _homeMenu(context),
       ],
     )
   );
  }
}


/*
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return Scaffold(
     appBar: AppBar(
       title: Text('Home')
        ),
        body: Column(
          children: <Widget>[
            Text('Email: ${ bloc.email }'),
            Text('Password: ${ bloc.password }')
          ],)
   );
  }
}
*/

Widget _homeMenu(BuildContext context) {

  //final bloc = Provider.of(context);
  final size = MediaQuery.of(context).size;

  return Column(children: <Widget>[
  Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            alignment: Alignment.topLeft,
            //margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1.0),
            child: Column(
              children: <Widget>[
                _botonPerfilUsuario(context),
                Text('Mi perfil',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ],
            ),
            ),
  SingleChildScrollView(
    child: Container(
       width: size.width * 1,
       margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10.0),
       padding: EdgeInsets.symmetric( vertical: 10.0), 
       decoration: BoxDecoration(
             color: Color.fromRGBO(201, 255, 253, 1),
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
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              _botonCalendario(context),
              SizedBox(height: 10.0),
              Text("Calendario/Horario"),
              SizedBox(height: 50.0),
              _botonEdificios(context),
              SizedBox(height: 10.0),
              Text("Facultades"),
              SizedBox(height: 50.0),
              _botonLogros(context),
              SizedBox(height: 10.0),
              Text("Logros"),
            ],
            ),
          SizedBox(width: 1),
          Column(
            children: <Widget>[
              _botonMisRamos(context),
              SizedBox(height: 10.0),
              Text("Mis Ramos"),              
              SizedBox(height: 50.0),
              _botonMisProfesores(context),
              SizedBox(height: 10.0),
              Text("Mis Profesores"),              
              SizedBox(height: 50.0),
              _botonAjustes(context),
              SizedBox(height: 10.0),
              Text("Ajustes"),              
            ],
            ),
            SizedBox(width: 10),
          Column(
            children: <Widget>[
              _botonAvisos(context),
              SizedBox(height: 10.0),
              Text("Notificaciones"),              
              SizedBox(height: 50.0),
              _botonInfoPucv(context),
              SizedBox(height: 10.0),
              Text("Informaciones"),              
              SizedBox(height: 50.0),
              _botonVotacionRapida(context),
              SizedBox(height: 10.0),
              Text("Votación Rapida"),              
            ],
            )
        ],)
      )
     ),
    ],
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

Widget _botonPerfilUsuario(BuildContext context){

  return RaisedButton(
        shape: CircleBorder(),
        color: Colors.white,
        child: Icon(Icons.person, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'miperfil');
        } ,
);
}

Widget _botonCalendario(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.calendar_today, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'calendario');
        } ,
);
}

Widget _botonEdificios(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.business, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'edificios');
        } ,
);

}

Widget _botonLogros(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.star_border, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'logros');
        } ,
);
}

Widget  _botonMisRamos(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.book, size: 60),
        onPressed: () {

          Navigator.pushNamed(context, 'misramos');

        },
);
}

 Widget _botonMisProfesores(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.school, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'profesores');
        } ,
);
}

 Widget _botonAjustes(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.settings, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'ajustes');
        } ,
);
}

 Widget _botonAvisos(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.notifications_active, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'avisos');
        } ,
);
}

 Widget _botonInfoPucv(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.info, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'infopucv');
        } ,
);
}

 Widget _botonVotacionRapida(BuildContext context){

  return RaisedButton(
        child: Icon(Icons.check, size: 60),
        onPressed:() {
          Navigator.pushNamed(context, 'votacion');
        } ,
);
}

/*_misRamos(BuildContext context){

    Navigator.pushReplacementNamed(context, 'home');
}
*/