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

    test("User info missing first_name", () {
      expect(
          () => User.fromJSON(
              {"last_name": "Jones", "phone_number": 0000000000, "id": 2}),
          throwsA(isA<FormatException>()));
    });

    test("User phone_number == null", () {
      expect(
          () => User.fromJSON({
                "first_name": "First",
                "last_name": "Last",
                "phone_number": null,
                "id": 4
              }),
          throwsA(isA<FormatException>()));
    });
  });
}
