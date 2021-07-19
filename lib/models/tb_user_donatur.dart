part of 'models.dart';

class UserDonatur extends Equatable {
  final String nikDonatur;
  final String namaDpn;
  final String namaBlkng;
  final String alamat;
  final String noTelp;
  final String pathFotoProfil;
  final DateTime tglDaftar;
  final String jumlahDana;

  UserDonatur(this.nikDonatur, this.namaDpn, this.namaBlkng, this.alamat,
      this.noTelp, this.pathFotoProfil, this.tglDaftar, this.jumlahDana);

  @override
  List<Object> get props => [
        nikDonatur,
        namaDpn,
        namaBlkng,
        alamat,
        noTelp,
        pathFotoProfil,
        tglDaftar,
        jumlahDana
      ];
}

List<UserDonatur> dummyUserDonatur = [
  UserDonatur("3302241701000004", "Cd", "cc", "Jl.C", "333444555",
      "images/c.jpg", DateTime.now(), "100000"),
  UserDonatur("3402241701000004", "Dd", "dd", "Jl.D", "444555666",
      "images/d.jpg", DateTime.now(), "325000"),
];
