import 'dart:math';

class User {
  String first_name = "";
  String last_name = "";
  int phone_number = 0;
  int id = 0;
  //List<Request> = [];
  User();

  User.fromJSON(Map<String, dynamic> json) {
    try {
      print('json -> $json');

      id = json['id'];
      first_name = json['first_name'];
      last_name = json['last_name'];
      phone_number = json['phone_number'];
    } catch (e) {
      throw const FormatException('User info incorrect.');
    }
  }

  Map<String, dynamic> toJSON() {
    try {
      return {
        'first_name': first_name,
        'last_name': last_name,
        'phone_number': phone_number,
        'id': id
      };
    } catch (e) {
      throw const FormatException('User info incorrect.');
    }
  }
}
