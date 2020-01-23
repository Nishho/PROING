import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:proing/info_profes.dart';

class CardSwiper extends StatelessWidget {

  
  final List<String> images = [
  profesores[0].fotoProfe,
  profesores[1].fotoProfe,
  profesores[2].fotoProfe,
  profesores[3].fotoProfe
  ];

  final List<String> nombres =[
    profesores[0].nomProf,
    profesores[1].nomProf,
    profesores[2].nomProf,
    profesores[3].nomProf,
  ];


CardSwiper({  @required images });

  @override
  Widget build(BuildContext context){

    final _screenSize = MediaQuery.of( context ).size;

    return Container (
      alignment: Alignment.topLeft,
    //padding: EdgeInsets.only(top: 30.0),
    child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.9,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            borderRadius : BorderRadius.circular(20.0),
            child: Image.network( images[index],fit: BoxFit.cover),
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
    


  }

}
