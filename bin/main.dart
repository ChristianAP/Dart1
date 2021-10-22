import 'dart:convert' as convert;

import 'package:app_http/clases/clases.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  //// EJERCICIO 1 PART 2
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final respuesta = welcomeFromJson(res.body);
    print('${respuesta.data}');
    for (int i = 0; i < respuesta.data.length; i++) {
      print(respuesta.data[i].email);
    }
  });

  //final url = Uri.parse('https://reqres.in/api/users?page=2');
  // http.get(url).then((res) {
  //   final body = convert.jsonDecode(res.body);
  // for (int i = 0; i < body.length; i++) {
  //    print('${body['data'][i]['email']}');
  //  }
  //});
}
