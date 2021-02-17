import 'package:empresas_app/data/constants/c_api_url.dart';
import 'package:empresas_app/data/models/enterprise.dart';
import 'package:empresas_app/view/screens/s_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../v_contansts.dart';

class EnterprisesPage extends StatefulWidget {
  final Enterprise document;
  const EnterprisesPage({this.document});
  @override
  EnterprisesDetailsState createState() => EnterprisesDetailsState();
}

class EnterprisesDetailsState extends State<EnterprisesPage> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.document.name,style: AppTextStyle.blackRegular14,),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color:Colors.black,
          onPressed: (){  Get.to(Home());
          },
        ),
      ),
      body: SingleChildScrollView(
        child:  Container(
            width:  MediaQuery
                .of(context)
                .size
                .width,
            height:  MediaQuery
                .of(context)
                .size
                .height,
            color:Colors.white,
            child: Column(
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
                                '${ApiUrls.BASE_URL}/${widget.document.photo}')
                        )
                    ),
                  ),
                ),
                SizedBox(height:  MediaQuery
                    .of(context)
                    .size
                    .height /20),
                Text(widget.document.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize:  MediaQuery.of(context).size.height/65,
                  ),),

                SizedBox(height:  MediaQuery
                    .of(context)
                    .size
                    .height /20),

                Container(
                  padding:  EdgeInsets.all(15.0),
                  decoration: DecorationConstants.decorationTextField,
                  child:Text(widget.document.description,
                    style: TextStyle(
                      color:  Colors.black,
                      fontSize:  MediaQuery.of(context).size.height/65,
                    ),),
                ),





              ],
            )
        ),
      ),
    );
  }




}