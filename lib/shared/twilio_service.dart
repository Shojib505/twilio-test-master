import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TwilioFunctionsService {
  TwilioFunctionsService._();
  static final instance = TwilioFunctionsService._();

  final http.Client client = http.Client();
  final accessTokenUrl = 'https://twiliochatroomaccesstoken-8490.twil.io/accessToken';

  Future<dynamic> createToken(String identity) async {
    /// TODO: implement the function to call the access token
    try {
      print('accessTokenUrl  --------- ' + accessTokenUrl.toString());
      Map<String, String> header = {
        'Content-Type': 'application/json',
      };
      var url = Uri.parse(accessTokenUrl + '?user=' + identity);
      print('URI --------- ' + url.toString());
      final response = await client.get(url, headers: header);
      print('RESPONSE Future<Response> --------- ' + client.get(url, headers: header).toString());
      Map<String, dynamic> responseMap = jsonDecode(response.body);
      print('RESPONSE MAP --------- ' + responseMap.toString());
      return responseMap;
    } catch (error) {
      print('Exception --------- ' + Exception([error.toString()]).toString());
      throw Exception([error.toString()]);
    }
  }
}
