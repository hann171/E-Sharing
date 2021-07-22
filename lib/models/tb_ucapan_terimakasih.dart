part of 'models.dart';

class UcapanTerimakasih {
  final int idUcapan;
  final User userPenerima;
  final String ucapanTerimakasih;

  UcapanTerimakasih(this.idUcapan, this.ucapanTerimakasih, this.userPenerima);
}

List<UcapanTerimakasih> dummyUcapanTerimakasih = [
  UcapanTerimakasih(
      1,
      "Terimakasih atas bantuannya Terimakasih atas bantuannya Terimakasih atas bantuannya Terimakasih atas bantuannyaTerimakasih atas bantuannya",
      dummyUser[2]),
  UcapanTerimakasih(2, "Terimakasih bantuannya Terimakasih atas bantuannya",
      dummyUser[3])
];
