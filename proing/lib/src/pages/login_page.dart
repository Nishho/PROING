import 'package:flutter/material.dart';
import 'package:proing/src/bloc/login_bloc.dart';
import 'package:proing/src/bloc/provider.dart';



class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: <Widget>[
         _crearFondo( context ),
         _loginForm(context),
       ],
     )
     );
  }
}
Widget _loginForm(BuildContext context) {

  final bloc = Provider.of(context);
  final size = MediaQuery.of(context).size;

  return SingleChildScrollView(
    child: Column(
      children: <Widget>[

        SafeArea(
          child: Container(
            height: 200.0,
            ),
            ),


          Container(
             width: size.width * 0.85,
             margin: EdgeInsets.symmetric(vertical: 30.0),
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
            child: Column(
            children: <Widget>[
            Text('Ingreso', style: TextStyle(fontSize: 20.0)),
            SizedBox( height: 30.0,),
            _crearEmail( bloc ),
            SizedBox( height: 30.0,),
            _crearContrasena( bloc ),
            SizedBox( height: 30.0,),
            _crearBoton( bloc )
           ],
         ),
       ),
    Text('¿Olvido la contraseña?'),  
    ],
  ),
);
}


Widget _crearBoton( LoginBloc bloc ){
   
   return StreamBuilder(
     stream: bloc.formValidStream ,
     builder: (BuildContext context, AsyncSnapshot snapshot){
        
      return RaisedButton(
     child: Container(
       padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
       child: Text('Ingresar'),
      ),
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 0.0,
      color: Color.fromRGBO(36, 33, 202, 1.0),
      textColor: Colors.white,
      onPressed: snapshot.hasData ? ()=> _login(bloc, context) : null,
    );
  },
);  
}

_login(LoginBloc bloc, BuildContext context){

  print('==============');
  print('Email: ${ bloc.email} ');
  print('Password: ${ bloc.password} ');
  print('==============');

   Navigator.pushReplacementNamed(context, 'home');

}





Widget _crearEmail(LoginBloc bloc){

  return StreamBuilder(
    stream: bloc.emailStream ,
    //initialData: initialData ,
    builder: (BuildContext context, AsyncSnapshot snapshot){
   
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 20.0),


     child: TextField(
       keyboardType: TextInputType.emailAddress,
       decoration: InputDecoration(
         icon: Icon( Icons.alternate_email, color: Colors.deepPurple),
         hintText: 'ejemplo@correo.com',
         labelText: 'Correo electrónico',
         counterText: snapshot.data,
         errorText: snapshot.error
        ),
        onChanged: bloc.changeEmail,
      ),
   );
  },
  );

}


Widget _crearContrasena(LoginBloc bloc){
   
  return StreamBuilder(
    stream: bloc.passwordStream,
    builder: (BuildContext context, AsyncSnapshot snapshot){

      return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),


            child: TextField(
            obscureText: true,  
            decoration: InputDecoration(
            icon: Icon( Icons.lock_outline, color: Colors.deepPurple),
            labelText: 'Contraseña',
            counterText: snapshot.data,
            errorText: snapshot.error
           ),
           onChanged: bloc.changePassword,
        ),
      );
    },
  );
}


Widget _crearFondo(BuildContext context){

  final size = MediaQuery.of(context).size;

  final fondoBeige = Container(
    height: size.height * 0.4,
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

  return Stack(
    children: <Widget>[
      fondoBeige,

      Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
            Icon( Icons.person, color: Colors.white, size: 100.0),
            SizedBox(height : 10.0, width: double.infinity),
            Text('Nicholas Espinoza', style: TextStyle(
                                                      color: Colors.white, 
                                                      fontSize : 24, 
                                                      fontFamily: 'Limelight-Regular'
                                                      )
              )                                     
           ],
         )
      ,)
    ],
  );
}