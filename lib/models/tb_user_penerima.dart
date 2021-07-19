part of 'models.dart';

class UserPenerima extends Equatable {
  final String nikPenerima;
  final String namaDpn;
  final String namaBlkng;
  final String alamat;
  final String noTelp;
  final String noRek;
  final String pekerjaan;
  final String deskripsiEko;
  final String jumlahTanggungan;
  final String pathKK;
  final String pathPHK;
  final String pathSKTM;
  final String pathRumah;
  final String pathFotoProfil;
  final DateTime tglDaftar;
  final String jumlahDana;

  UserPenerima(
      this.nikPenerima,
      this.namaDpn,
      this.namaBlkng,
      this.alamat,
      this.noTelp,
      this.noRek,
      this.pekerjaan,
      this.deskripsiEko,
      this.jumlahTanggungan,
      this.pathKK,
      this.pathPHK,
      this.pathSKTM,
      this.pathRumah,
      this.pathFotoProfil,
      this.tglDaftar,
      this.jumlahDana);

  @override
  List<Object> get props => [
        nikPenerima,
        namaDpn,
        namaBlkng,
        alamat,
        noTelp,
        noRek,
        pekerjaan,
        deskripsiEko,
        jumlahTanggungan,
        pathKK,
        pathPHK,
        pathSKTM,
        pathRumah,
        pathFotoProfil,
        tglDaftar,
        jumlahDana
      ];
}

List<UserPenerima> dummyUserPenerima = [
  UserPenerima(
      "3304427110000005",
      "A",
      "aa",
      "Jl.A",
      "111111",
      "111222333",
      "AAA",
      "AaaAaaAaa",
      "3 Anak",
      "images/a.jpg",
      "images/a.jpg",
      "images/a.jpg",
      "images/a.jpg",
      "images/a.jpg",
      DateTime.now(),
      "225000"),
  UserPenerima(
      "3404427110000005",
      "B",
      "bb",
      "Jl.B",
      "222222",
      "222333444",
      "BBB",
      "BbbBbbBbb",
      "2 Anak",
      "images/b.jpg",
      "images/b.jpg",
      "images/b.jpg",
      "images/b.jpg",
      "images/b.jpg",
      DateTime.now(),
      "150000"),
  UserPenerima(
      "3404427110000006",
      "C",
      "cc",
      "Jl.C",
      "333333",
      "333444555",
      "CCC",
      "CccCccCcc",
      "2 Anak",
      "images/c.jpg",
      "images/c.jpg",
      "images/c.jpg",
      "images/c.jpg",
      "images/c.jpg",
      DateTime.now(),
      "265000"),
  UserPenerima(
      "3404427110000007",
      "D",
      "dd",
      "Jl.D",
      "444444",
      "444555666",
      "DD",
      "DddDddDdd",
      "1 Anak",
      "images/d.jpg",
      "images/d.jpg",
      "images/d.jpg",
      "images/d.jpg",
      "images/d.jpg",
      DateTime.now(),
      "75000")
];
