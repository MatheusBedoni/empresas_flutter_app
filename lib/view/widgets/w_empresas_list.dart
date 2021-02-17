
import 'package:empresas_app/data/models/enterprise.dart';
import 'package:flutter/material.dart';

import 'w_empresas.dart';

class WempresasList extends StatelessWidget{
  final List<Enterprise> listEnterprise;

  WempresasList({this.listEnterprise});
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: new ListView.builder(
          shrinkWrap: true,
          itemCount:listEnterprise.length,
          itemBuilder: (BuildContext context, int index) {
            return new Wempresas(index: index,enterprise:listEnterprise[index] );
          }),
    )
    ;

  }


}