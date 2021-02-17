import 'package:empresas_app/data/models/enterprise.dart';
import 'package:empresas_app/data/service/s_api.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EnterprisesController extends GetxController {
  Api api = Api();

  List<Enterprise> listEnterprise = new List<Enterprise>();

  Future<bool> getEnterprisesList() async {
    listEnterprise = await api.getEnterprises();
    update();
    return true;
  }
}