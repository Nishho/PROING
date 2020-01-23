import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proing/src/preferencias_usuarios/preferencias_usuarios.dart';


class UsuarioProvider {

final String _firebaseToken = 'AIzaSyBpe67rzZVVwJ2Z4TJSj-aSB9S06m-0770';
final _prefs = new PreferenciasUsuario();


 Future<Map<String, dynamic>> login(String email, String password) async {

final authData = {
  'email'    : email,
  'password' : password,
  'returnSecureToke' : true

};

  final resp = await http.post(
    'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_firebaseToken',
    body: json.encode( authData )
    );


  Map<String, dynamic> decodedResp = json.decode( resp.body);
  //print(decodeResp);

  if ( decodedResp.containsKey('idToken')){

    _prefs.token = decodedResp['idToken'];

    return {'ok': true, 'token': decodedResp['idToken']};

  }else{

    return {'ok': false, 'mensaje': decodedResp['error']['message']};

  }

  }

Future<Map<String, dynamic>> nuevoUsuario( String email, String password) async{

final authData = {
  'email'    : email,
  'password' : password,
  'returnSecureToke' : true

};

  final resp = await http.post(
    'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken',
    body: json.encode( authData )
    );


  Map<String, dynamic> decodedResp = json.decode( resp.body);
  //print(decodeResp);

  if ( decodedResp.containsKey('idToken')){

    _prefs.token = decodedResp['idToken'];

    return {'ok': true, 'token': decodedResp['idToken']};

  }else{

    return {'ok': false, 'mensaje': decodedResp['error']['message']};

  }

 }
}