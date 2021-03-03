import 'package:todosapp/model/menus.dart';
import 'package:http/http.dart' show Client;

class ApiService {
  final String baseUrl = "http://api.bengkelrobot.net:8001";
  Client client = Client();

  Future<List<ModelMenu>> getProfiles() async {
    final response = await client.get("$baseUrl/api/profile");
    if (response.statusCode == 200) {
      return modelMenuFromJson(response.body);
    } else {
      return null;
    }
  }
}
