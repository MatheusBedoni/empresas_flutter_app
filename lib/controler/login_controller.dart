
import 'package:empresas_app/data/s_api.dart';
import 'package:empresas_app/view/screens/s_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView {
  String validEmail(String value){}
  String validPass(String value){}
  Future<int> login() async{}
}
class LoginController implements LoginView{
  Api api;
  GlobalKey<FormState> key = new GlobalKey();
  final ctrlEmail = new TextEditingController();
  final ctrlPass = new TextEditingController();


  LoginController(){
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
  Future<int> login() async {
    if (key.currentState.validate()){
       int status = await api.login(ctrlEmail.text, ctrlPass.text);
       if(status == 200){
         Get.to(Home());
       }
    }
  }



}