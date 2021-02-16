
import 'package:empresas_app/data/models/enterprise.dart';
import 'package:flutter/material.dart';

class WempresasList extends StatelessWidget{
  final int index;
  final Enterprise enterprise;

  WempresasList({this.index,this.enterprise});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){


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
                    color:Colors.orange,
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