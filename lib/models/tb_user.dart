part of 'models.dart';

enum TipeUsers { donatur, penerima }

class User extends Equatable {
  final String nik;
  final String password;
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
  final TipeUsers tipeUser;
  //final TipeUser idTipeUser;

  User(
      this.nik,
      this.password,
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
      this.jumlahDana,
      this.tipeUser);

  List<Object> get props => [nik, password, tipeUser];
}

List<User> dummyUser = [
  User(
      "3302241701000004",
      "123456",
      "A",
      "aa",
      "Jl.A",
      "111111",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "images/a.jpg",
      DateTime.now(),
      "100000",
      TipeUsers.donatur),
  User(
      "3402341701000004",
      "123456",
      "B",
      "bb",
      "Jl.B",
      "222222",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "images/b.jpg",
      DateTime.now(),
      "150000",
      TipeUsers.donatur),
  User(
      "3304427110000005",
      "123456",
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
      "225000",
      TipeUsers.penerima),
  User(
      "3404427140000005",
      "123456",
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
      "200000",
      TipeUsers.penerima),
  User(
      "3404427110000007",
      "123456",
      "E",
      "ee",
      "Jl.E",
      "555555",
      "555666777 ",
      "EE",
      "EeeEeeEee",
      "3 Anak",
      "images/e.jpg",
      "images/e.jpg",
      "images/e.jpg",
      "images/e.jpg",
      "images/e.jpg",
      DateTime.now(),
      "365000",
      TipeUsers.penerima),
  User(
      "3404427108000005",
      "123456",
      "F",
      "ff",
      "Jl.F",
      "666666",
      "666777888",
      "FF",
      "FffFffFff",
      "5 Anak",
      "images/f.jpg",
      "images/f.jpg",
      "images/f.jpg",
      "images/f.jpg",
      "images/f.jpg",
      DateTime.now(),
      "465000",
      TipeUsers.penerima),
];
