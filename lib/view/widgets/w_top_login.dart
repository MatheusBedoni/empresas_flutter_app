import 'package:flutter/material.dart';

import '../v_contansts.dart';

class Wtop extends StatelessWidget{
  double maxHeight;

  Wtop(this.maxHeight);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: maxHeight <= 540 ? MediaQuery
          .of(context)
          .size
          .height  / 4.5: MediaQuery
          .of(context)
          .size
          .height  / 2.5,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: DecorationConstants.decorationLogin,
      child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Image.asset(LayoutConstants.logo),
            maxHeight >= 540 ?
            Text(LayoutConstants.title,style: AppTextStyle.whiteRegular14,):Container()
          ]
      ),
    );
  }

}