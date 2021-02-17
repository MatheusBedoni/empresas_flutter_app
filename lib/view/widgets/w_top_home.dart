import 'package:flutter/material.dart';

import '../v_contansts.dart';

class Wtop extends StatelessWidget{
  double maxHeight;

  Wtop(this.maxHeight);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height:  MediaQuery
          .of(context)
          .size
          .height  / 6.5,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: DecorationConstants.decorationHome,
      child:Stack(

          children:<Widget>[
            Positioned(
              top:10,
              left:5,
              child:Opacity(
                opacity:0.2 ,
                child:Image.asset(LayoutConstants.logo,width: 50,height: 50,fit: BoxFit.fill,)
              )
            ),
            Positioned(
                bottom:10,
                right:5,
                child:Opacity(
                    opacity:0.2 ,
                    child:Image.asset(LayoutConstants.logo,width: 100,height: 100,fit: BoxFit.fill,)
                )
            ),
            Positioned(
                bottom:200,
                right:200,
                child:Opacity(
                    opacity:0.2 ,
                    child:Image.asset(LayoutConstants.logo,width: 80,height: 80,fit: BoxFit.fill,)
                )
            ),


          ]
      ),
    );
  }

}