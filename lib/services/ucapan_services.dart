part of 'services.dart';

class UcapanServices {
  static Future<ApiReturnValue<List<UcapanTerimakasih>>> getUcapan() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: dummyUcapanTerimakasih);
  }
}
