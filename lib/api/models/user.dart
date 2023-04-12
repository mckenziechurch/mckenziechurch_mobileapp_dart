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
      first_name = json['firstName'];
      last_name = json['lastName'];
      phone_number = json['phoneNumber'];
    } catch (e) {
      throw const FormatException('User info incorrect.');
    }
  }

  Map<String, dynamic> toJSON() => {
        'firstName': first_name,
        'lastName': last_name,
        'phoneNumber': phone_number
      };
}
