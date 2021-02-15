import 'c_api_url.dart';
import 'package:http/http.dart' as http;

abstract class ApiService {
  Future<int> login(String email, String pass);
  Future<dynamic> getEnterprises();
}


class Api  implements ApiService{
  @override
  Future getEnterprises() {
    // TODO: implement getEnterprises
    throw UnimplementedError();
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
      print(response.headers);
      return response.statusCode;
    }
  }

}