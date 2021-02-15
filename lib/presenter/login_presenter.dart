
import 'package:empresas_app/data/s_api.dart';
import 'package:flutter/material.dart';

class LoginView {
  String validEmail(String value){}
  String validPass(String value){}
  String login(){}
}
class LoginPresenter implements LoginView{
  Api api;
  GlobalKey<FormState> key = new GlobalKey();
  final ctrlEmail = new TextEditingController();
  final ctrlPass = new TextEditingController();


  LoginPresenter(){
    api = Api();
  }



  @override
  String validEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if(!regExp.hasMatch(value)){
      return "Email inválido";
    }else {
      return null;
    }
  }

  @override
  String validPass(String value) {
    if (value.length == 0) {
      return "Informe a senha";
    }
    return null;
  }

  @override
  String login() {
    if (key.currentState.validate()){
       api.login(ctrlEmail.text, ctrlPass.text);
    }
  }



}