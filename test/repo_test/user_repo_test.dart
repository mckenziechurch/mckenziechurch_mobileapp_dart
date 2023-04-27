import 'package:flutter_test/flutter_test.dart';
import 'package:mckenziechurch_project1/api/models/user.dart';
import 'package:mckenziechurch_project1/api/repositories/user_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import 'user_repo_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  UserRepo repo = UserRepo();
  group('Users', () {
    test('Return all customers w/ successful http call', () async {
      final client = MockClient();

      // Construct a list of User objects
      List<User> expectedUsers = [
        User(),
        User(),
      ];
      expectedUsers[0].first_name = "McKenzie";
      expectedUsers[0].last_name = "Church";
      expectedUsers[0].id = 1;
      expectedUsers[0].phone_number = 2222222222;

      expectedUsers[1].first_name = "Jane";
      expectedUsers[1].last_name = "Doe";
      expectedUsers[1].phone_number = 1111111111;
      expectedUsers[1].id = 2;

      // Use Mockito to mock the HTTP client and return the expected response
      when(client.get(Uri.parse('http://localhost:8080/api/v1/users')))
          .thenAnswer((_) async => http.Response(
                '{[{"first_name": "McKenzie", "last_name": "Church", "phone_number": 2222222222, "id": 1}}, {"first_name": "Jane", "last_name": "Doe", "phone_number": 1111111111, "id": 2}]}',
                200,
              ));

      // Call the getAllUsers method and verify the size of the returned list
      List<User> users = await repo.getAllUsers();
      expect(users.length, 2);
    });

    test('throws an exception if the http call completes with an error',
        () async {
      final client = MockClient();
      when(client.get(Uri.parse('http://localhost:8080/api/v1/users')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      expect(await repo.getAllUsers(), throwsException);
    });
  });
}
