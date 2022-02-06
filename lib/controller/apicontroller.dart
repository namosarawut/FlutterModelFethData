import 'package:http/http.dart' as http;
// const base_url = "https://supker-k.com";
const base_url = "http://156.67.220.229:3000";

class ApiService {

  Future<http.Response> getProductAll() async {
    var url = Uri.parse(base_url+'/products');
    final response = await http.get(url, headers: {
      "Accept": "application/json",
    });
    return response;
  }



}