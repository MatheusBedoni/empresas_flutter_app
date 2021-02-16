import 'package:flutter/material.dart';

class LayoutConstants{
  static final String backgroundImage = 'imagens/background.png';
  static final String logo_home = 'imagens/logo_home.png';
  static final String logo = 'imagens/logo.png';
  static final String email = 'email';
  static final String senha = 'senha';
  static final String login = 'entrar';
  static final String title = 'Seja bem vindo ao empresas';
}




class DecorationConstants{

  static final BoxDecoration decorationBackground = BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              LayoutConstants.backgroundImage)
      )
  );

  static final BoxDecoration decorationLogin = BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(150),
        bottomRight: Radius.circular(150),
      ),
      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              LayoutConstants.backgroundImage)
      )
  );
  static final BoxDecoration decorationHome = BoxDecoration(

      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              LayoutConstants.backgroundImage)
      )
  );
  static final BoxDecoration decorationTextField = BoxDecoration(

    borderRadius: BorderRadius.all(
        Radius.circular(4)
    ),
    color:  Color(0xFFF5F5F5),
  );

}

class AppTextStyle {
  static final whiteRegular14 = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
  static final blackRegular14 = TextStyle(
    color: Colors.black,
    fontSize: 14,
  );


}