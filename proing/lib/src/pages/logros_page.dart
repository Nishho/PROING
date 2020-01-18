import 'package:flutter/material.dart';



class LogrosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Logros',
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
        /// _loginForm(context),
       ],
     )
     );
  }
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