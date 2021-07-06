part of 'models.dart';

class Donatur extends Equatable {
  final int idDonatur;
  final String namaDepan;
  final String namaBelakang;
  final String alamatDonatur;
  final String noTelp;
  final String pathFoto;
  final DateTime tglDaftar;
  final int idRole;

  Donatur(this.idDonatur, this.namaDepan, this.namaBelakang, this.alamatDonatur,
      this.noTelp, this.pathFoto, this.tglDaftar, this.idRole);

  @override
  List<Object> get props => [
        idDonatur,
        namaDepan,
        namaBelakang,
        alamatDonatur,
        noTelp,
        pathFoto,
        tglDaftar,
        idRole
      ];
}

Donatur dummyDonatur = Donatur(
    1,
    'Hengky',
    'Wijaya',
    'Jl. Jend. Soedirman',
    '08812345678',
    'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
    DateTime.now(),
    3);
