part of 'services.dart';

class DonasiNonDanaServices {
  static Future<ApiReturnValue<List<DonasiNonDana>>> getDonasiNonDana() async {
    await Future.delayed(Duration(milliseconds: 1000));

    return ApiReturnValue(value: dummyDonasiNonDana);
  }
}
