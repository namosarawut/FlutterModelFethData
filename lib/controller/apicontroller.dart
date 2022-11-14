import 'package:http/http.dart' as http;
const baseUrl = "https://api.polygon.io/";
// const base_url = "http://156.67.220.229:3000";

class ApiService {

  Future<http.Response> getProductAll() async {
    var url = Uri.parse("${baseUrl}v1/open-close/crypto/BTC/USD/2020-10-14?adjusted=true&apiKey=xIoj9PFYRwhimC0OHwdpyopv66NXluqy");
    final response = await http.get(url, headers: {
      "Accept": "application/json",
      "Authorization":"Bearer xIoj9PFYRwhimC0OHwdpyopv66NXluqy"
    });
    return response;
  }



}