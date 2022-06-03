import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class getData{
  Future<void> getplaydata() async{
    var addr = Uri.https('worldtimeapi.org', '/api/timezone/', {'q' : '{https}'});
    Response response = await get(addr);
    Map data = jsonDecode(response.body);
}







}