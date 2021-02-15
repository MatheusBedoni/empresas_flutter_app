import 'package:empresas_app/presenter/login_presenter.dart';
import 'package:empresas_app/view/widgets/w_top.dart';
import 'package:flutter/material.dart';

import '../v_contansts.dart';

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();


}

class _LoginPageState extends State<Login> {
  LoginPresenter loginPresenter = new LoginPresenter();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:LayoutBuilder(
        builder:
        (BuildContext context, BoxConstraints constraints) {


      return Container(
          height:  MediaQuery
              .of(context)
              .size
              .height ,

          color:Colors.white,
          child:Form(
              key: loginPresenter.key,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Wtop(constraints.maxHeight),
                  SizedBox(height:  MediaQuery
                      .of(context)
                      .size
                      .height /30),
                  Container(
                    margin:  EdgeInsets.all(15.0),
                    child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget>[
                          Text(LayoutConstants.email,style: AppTextStyle.blackRegular14,),
                          Container(
                            decoration: DecorationConstants.decorationTextField,
                            child:TextFormField(

                              controller: loginPresenter.ctrlEmail,
                              validator:loginPresenter.validEmail,
                              decoration:  InputDecoration(fillColor: Colors.white),
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                          SizedBox(height:  MediaQuery
                              .of(context)
                              .size
                              .height /30),
                          Text(LayoutConstants.senha,style: AppTextStyle.blackRegular14,),
                          Container(
                            decoration: DecorationConstants.decorationTextField,
                            child:TextFormField(
                              controller: loginPresenter.ctrlPass,
                              obscureText: true,
                              validator:loginPresenter.validPass,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,
                              decoration:  InputDecoration(fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(height:  MediaQuery
                              .of(context)
                              .size
                              .height /30),
                          ButtonTheme(
                            height: 48,
                            minWidth: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              onPressed: () => {
                                loginPresenter.login()
                              },
                              shape: new RoundedRectangleBorder(borderRadius:
                              new BorderRadius.circular(8.0)),
                              child: Text(
                                LayoutConstants.login,
                                style:AppTextStyle.whiteRegular14,
                              ), //Text
                              color:Colors.pink,
                            ),//RaisedButton
                          )
                        ]
                    ),
                  )


                ],
              )
          ),
      );}
      // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
