part of 'services.dart';

class DonasiServices {
  static Future<ApiReturnValue<List<DonasiDana>>> getDonasiDana() async {
    await Future.delayed(Duration(seconds: 3));
    return ApiReturnValue(value: dummyDonasiDana);
  }

  static Future<ApiReturnValue<List<DonasiNonDana>>> getDonasiNonDana() async {
    await Future.delayed(Duration(seconds: 3));
    return ApiReturnValue(value: dummyDonasiNonDana);
  }

  static Future<ApiReturnValue<DonasiDana>> submitDonasiDana(
      DonasiDana donasiDana) async {
    await Future.delayed(Duration(seconds: 2));
    return ApiReturnValue(
        value: donasiDana.copyWith(
            id: 7, status: StatusDonasiDana.belumVerifikasi));
  }

  static Future<ApiReturnValue<DonasiNonDana>> submitDonasiNonDana(
      DonasiNonDana donasiNonDana) async {
    await Future.delayed(Duration(seconds: 2));
    return ApiReturnValue(
        value: donasiNonDana.copyWith(
            id: 7, status: StatusDonasiNonDana.belumVerifikasi));
  }
}
