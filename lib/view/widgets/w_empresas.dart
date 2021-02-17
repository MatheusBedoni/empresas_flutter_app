
import 'package:empresas_app/data/constants/c_api_url.dart';
import 'package:empresas_app/data/models/enterprise.dart';
import 'package:empresas_app/view/screens/s_enterprise_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wempresas extends StatelessWidget{
  final int index;
  final Enterprise enterprise;

  Wempresas({this.index,this.enterprise});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){
          Get.to(EnterprisesPage(document: enterprise,));

        },
        child:Stack(
          children:<Widget> [
            Center(
              child:Container(
                  height:  MediaQuery
                      .of(context)
                      .size
                      .height /7,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width /1.1,

                  decoration: BoxDecoration(
                    border: Border.all (width: 5, color:Colors.white),
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    ),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              '${ApiUrls.BASE_URL}/${enterprise.photo}')
                      )
                  ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery
                      .of(context)
                      .size
                      .height /15,
                ),
                child:Text(enterprise.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  Color(0xFFfff9f9),
                    fontSize:  MediaQuery.of(context).size.height/65,
                  ),
                ),
              ),
            ),




          ],
        )

    )
    ;

  }


}