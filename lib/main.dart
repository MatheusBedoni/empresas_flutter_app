import 'package:empresas_app/view/screens/s_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/v_contansts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Before: MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(milliseconds: 6000),
            () =>
                Get.to(Login()));

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:Container(
        height:  MediaQuery
            .of(context)
            .size
            .height ,
        width: MediaQuery
            .of(context)
            .size
            .width ,
        decoration: DecorationConstants.decorationBackground,
        child:Center(
          child:Image.asset(LayoutConstants.logo_home,
            fit: BoxFit.fill,)
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
