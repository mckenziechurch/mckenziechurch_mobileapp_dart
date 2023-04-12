import 'dart:convert';
import 'dart:io';

import '../models/request.dart';
import 'package:http/http.dart' as http;

class RequestRepo {
  Future<List<Request>> getAllRequests() async {
    try {
      var url = Uri.parse("http://localhost:8080/api/v1//helpme/all");
      var response = await http.get(url);
      if (response.statusCode == HttpStatus.accepted) {
        Iterable requestIterJSON = jsonDecode(response.body);
        List<Request> requestList = List<Request>.from(
            requestIterJSON.map((data) => Request.fromJSON(data)));

        return requestList;
      }
    } catch (error) {
      print(error);
    }
    return [];
  }

  Future<Request> addRequest(Request request) async {
    var url = Uri.parse("http://localhost:8080/api/v1/helpme");
    final response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(request.toJSON()));

    return Request.fromJSON(jsonDecode(response.body));
  }
}
