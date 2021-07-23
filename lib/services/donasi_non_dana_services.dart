part of 'services.dart';

class DonasiNonDanaServices {
  static Future<ApiReturnValue<List<DonasiNonDana>>> getDonasiNonDana() async {
    await Future.delayed(Duration(milliseconds: 1000));

    return ApiReturnValue(value: dummyDonasiNonDana);
  }

  static Future<ApiReturnValue<DonasiNonDana>> submitDonasiNonDana(
      DonasiNonDana donasiNonDana) async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(
        value: donasiNonDana.copyWith(
            id: 123, status: StatusDonasiNonDana.terverifikasi));
  }
}
