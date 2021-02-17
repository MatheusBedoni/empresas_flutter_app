import 'package:empresas_app/controler/enterprises_controller.dart';
import 'package:empresas_app/controler/home_controller.dart';
import 'package:empresas_app/view/widgets/w_top_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  ListenerController() {
    homeController.ctrlSearch.addListener(() {
      if (homeController.ctrlSearch.text.isEmpty) {
        setState(() {
          homeController.isSearch = false;
          homeController.searchText = "";
        });
      } else {
        setState(() {
          homeController.isSearch = true;
          homeController.searchText = homeController.ctrlSearch.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ListenerController();

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
                        .height  / 10.3,
                    left: 10,
                    right: 10,
                    child:Container(
                      padding:  EdgeInsets.all(15.0),
                      decoration: DecorationConstants.decorationTextField,
                      child:TextField(
                        controller: homeController.ctrlSearch,
                        decoration:  InputDecoration(fillColor: Colors.white,
                            hintText: 'Procure por uma empresa',
                            icon:  IconButton(
                              icon: Icon(Icons.search),
                              color: Colors.grey,
                              onPressed: (){  print('');
                              },
                            ),),

                      ),
                    ),
                  ),
                  homeController.isSearch != false ?
                  Positioned(
                    top:MediaQuery
                        .of(context)
                        .size
                        .height  / 5.6,
                    left: 10,
                    right: 10,
                    child:GetBuilder<EnterprisesController>(
                      builder: (_) =>
                          homeController.searchListView(),
                    ),
                  ):Container()

                ],
              );
            }
          // This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}
