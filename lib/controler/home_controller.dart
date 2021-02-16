
import 'package:empresas_app/data/s_api.dart';
import 'package:flutter/material.dart';

class HomeView {
  Future<int> getEnterprises() async{}
}
class HomeController implements HomeView{
  Api api;
  final ctrlSearch = new TextEditingController();


  HomeController(){
    api = Api();
  }


  @override
  Future<int> getEnterprises() async {
    api.getEnterprises();
  }



}