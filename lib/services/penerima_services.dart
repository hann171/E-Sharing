part of 'services.dart';

class PenerimaServices {
  static Future<ApiReturnValue<List<User>>> getPenerima() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: dummyUser);
  }
}
