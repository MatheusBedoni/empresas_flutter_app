import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import 'constants/c_api_url.dart';
import 'package:http/http.dart' as http;

import 'models/enterprise.dart';

abstract class ApiService {
  Future<int> login(String email, String pass);
  Future<List<Enterprise>> getEnterprises();
}


class Api  implements ApiService{
  GetStorage box = GetStorage();


  @override
  Future<List<Enterprise>> getEnterprises() async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "access-token": box.read('token'),
      "client": box.read('client'),
      "uid": box.read('uid'),
    };

    final url = "${ApiUrls.API}/${ApiUrls.VERSION}/${ApiUrls.ROUTE_GET_ENTERPRISE}";
    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["enterprises"];
      return json.map((result) => Enterprise.fromJson(result)).toList();
    } else {
      throw Exception("FAILED TO GET");
    }
  }

  @override
  Future<int> login(String email, String pass) async {
    Map<String, String> body =
    {
      "email": email,
      "password": pass
    };
    final url = "${ApiUrls.API}/${ApiUrls.VERSION}/${ApiUrls.ROUTE_LOGIN}";
    final response = await http.post(url, body: body);

    if(response.statusCode == 200){
      box.write('token',response.headers['access-token'] );
      box.write('uid',response.headers['uid'] );
      box.write('client',response.headers['client'] );
      return response.statusCode;
    }
  }

}