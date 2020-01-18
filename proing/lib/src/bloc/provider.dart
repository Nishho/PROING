import 'package:flutter/material.dart';
import 'package:proing/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {

  static Provider _instancia;

  factory Provider({ Key key, Widget child }){

    if (_instancia == null){
       _instancia = new Provider._internal(key: key, child: child );
    }

    return _instancia;

  }

  Provider._internal({Key key, Widget child})
  : super(key: key, child: child);


  final loginBloc = LoginBloc();

// Si se utiliza este provider la informacion se pierde.
//Provider({Key key, Widget child })
//  : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldwidget) => true;

      static LoginBloc of ( BuildContext context ){
       return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
    }
  }

