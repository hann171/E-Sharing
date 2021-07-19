part of 'services.dart';

class UserServices {
  Future<ApiReturnValue<User>> signIn(String nik, String password) async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: dummyUser[0]);
  }
}
