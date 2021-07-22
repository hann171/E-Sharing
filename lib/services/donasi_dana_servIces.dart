part of 'services.dart';

class DonasiDanaServices {
  static Future<ApiReturnValue<List<DonasiDana>>> getDonasiDana() async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(value: dummyDonasiDana);
  }

  static Future<ApiReturnValue<DonasiDana>> submitDonasiDana(
      DonasiDana donasiDana) async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(
        value: donasiDana.copyWith(
            id: 123, status: StatusDonasiDana.belumVerifikasi));
  }
}
