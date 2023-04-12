import 'dart:convert';
import 'dart:io';

import '../models/user.dart';
import 'package:http/http.dart' as http;

class UserRepo {
  Future<List<User>> getAllUsers() async {
    try {
      var url = Uri.parse("http://localhost:8080/api/v1/users");
      var response = await http.get(url);
      if (response.statusCode == HttpStatus.accepted) {
        Iterable userListJSON = jsonDecode(response.body);
        List<User> userList =
            List<User>.from(userListJSON.map((data) => User.fromJSON(data)));

        return userList;
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}
