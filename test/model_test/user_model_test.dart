import 'package:flutter_test/flutter_test.dart';
import 'package:mckenziechurch_project1/api/models/user.dart';

void main() {
  group('User Info Tests', () {
    test("User w/ all valid fields included", () {
      User user = User.fromJSON({
        "first_name": "McKenzie",
        "last_name": "Church",
        "phone_number": 2222222222,
        "id": 1
      });
      expect(user.first_name, "McKenzie");
      expect(user.last_name, "Church");
      expect(user.phone_number, 2222222222);
      expect(user.id, 1);
    });
  });
}
