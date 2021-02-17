
import 'package:empresas_app/data/models/enterprise.dart';
import 'package:empresas_app/data/service/s_api.dart';
import 'package:empresas_app/view/widgets/w_empresas_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'enterprises_controller.dart';

class HomeView {
  Future<int> getEnterprises() async{}
  Widget searchListView(){}
}
class HomeController implements HomeView{
  Api api;
  final ctrlSearch = new TextEditingController();
  var enterpriseListsController = Get.put(EnterprisesController());
  var searchListItems = new List<Enterprise>();

  String searchText = "";
  bool isSearch =false;


  HomeController(){
    api = Api();
  }


  @override
  Future<int> getEnterprises() async {
    enterpriseListsController.getEnterprisesList();
  }

  @override
  Widget searchListView() {
    searchListItems = new List<Enterprise>();
    if(enterpriseListsController.listEnterprise != null){
      for (int i = 0; i < enterpriseListsController.listEnterprise.length; i++) {
        var item = enterpriseListsController.listEnterprise[i];

        if (item.name.toLowerCase().contains(searchText.toLowerCase())) {
          searchListItems.add(item);
        }
      }
      return WempresasList(listEnterprise: searchListItems);
    }else{
      Container();
    }

  }



}