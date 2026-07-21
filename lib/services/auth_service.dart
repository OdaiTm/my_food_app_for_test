import 'package:dio/dio.dart';
import 'package:my_shop/models/user_model.dart';

class AuthService {
  static final dio = Dio();
  static String token = '';

  static Future<UserModel?> getUsers(String username, String password) async {
    try {
      final response = await dio.post(
        'https://dummyjson.com/auth/login',
        data: {
          "username": username.trim(),
          "password": password.trim(),
        },
      );

      print("API Response: ${response.data}");

      if (response.statusCode == 200) {
        // DummyJSON يستخدم accessToken
        token = response.data['accessToken'] ?? '';

        return UserModel(
          email: response.data['email'],
          imageUrl: response.data['image'],
          name: "${response.data["firstName"]} ${response.data["lastName"]}",
          phoneNumber: "0787366431",
          location: "Amman, Jordan",
        );
      }
    } on DioException catch (e) {
      print('DioError: ${e.response?.data ?? e.message}');
      return null;
    } catch (e) {
      print('General Error: $e');
      return null;
    }

    return null;
  }
}