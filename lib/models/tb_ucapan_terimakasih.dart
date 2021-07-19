part of 'models.dart';

class UcapanTerimakasih {
  final int idUcapan;
  final UserPenerima userPenerima;
  final String ucapanTerimakasih;

  UcapanTerimakasih(this.idUcapan, this.ucapanTerimakasih, this.userPenerima);
}

List<UcapanTerimakasih> dummyUcapanTerimakasih = [
  UcapanTerimakasih(
      1,
      "Terimakasih atas bantuannya Terimakasih atas bantuannya Terimakasih atas bantuannya Terimakasih atas bantuannyaTerimakasih atas bantuannya",
      dummyUserPenerima[0]),
  UcapanTerimakasih(2, "Terimakasih bantuannya Terimakasih atas bantuannya",
      dummyUserPenerima[1])
];
