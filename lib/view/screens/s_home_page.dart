import 'package:empresas_app/controler/home_controller.dart';
import 'package:empresas_app/controler/login_controller.dart';
import 'package:empresas_app/view/widgets/w_top_home.dart';
import 'package:flutter/material.dart';

import '../v_contansts.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<Home> {
  HomeController homeController = new HomeController();

  @override
  void initState() {
    super.initState();

   homeController.getEnterprises();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints constraints) {


              return Stack(
                children:<Widget> [
                  Container(
                    height:   MediaQuery
                        .of(context)
                        .size
                        .height,
                  ),
                  Wtop(constraints.maxHeight),
                  Positioned(
                    top:MediaQuery
                        .of(context)
                        .size
                        .height  / 5.6,
                    left: 10,
                    right: 10,
                    child:Container(
                      margin:  EdgeInsets.all(15.0),
                      decoration: DecorationConstants.decorationTextField,
                      child:TextField(
                        controller: homeController.ctrlSearch,
                        decoration:  InputDecoration(fillColor: Colors.white),
                      ),
                    ),
                  ),




                ],
              );
            }
          // This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}
