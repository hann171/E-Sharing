part of 'models.dart';

class Loker extends Equatable {
  final int idLoker;
  final String pathThumbnail;
  final String posisi;
  final String pendMin;
  final String lokasi;
  final String deskripsiLoker;
  final int idDonatur;
  final int idKategori;

  Loker(this.idLoker, this.pathThumbnail, this.posisi, this.pendMin,
      this.lokasi, this.deskripsiLoker, this.idDonatur, this.idKategori);

  @override
  List<Object> get props => [
        idLoker,
        pathThumbnail,
        posisi,
        pendMin,
        lokasi,
        deskripsiLoker,
        idDonatur,
        idKategori
      ];
}

List<Loker> dummyLoker = [
  Loker(
      1,
      'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
      'Karyawan toko',
      'SMA/SMK',
      'PT.ABX',
      'Dibutuhkan karyawan toko untuk PT.ABX, laki-laki/perempuan, umur 18-30th, tidak dalam masa studi, dan berpenampilan menarik. Untuk info lebih lanjut hubungi kami.',
      27,
      2),
  Loker(
      2,
      'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
      'Kasir',
      'SMA/SMK',
      'PT.ABX',
      'Dibutuhkan karyawan toko untuk PT.ABX, laki-laki/perempuan, umur 18-30th, tidak dalam masa studi, dan berpenampilan menarik. Untuk info lebih lanjut hubungi kami.',
      27,
      2),
  Loker(
      3,
      'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
      'Admin',
      'SMA/SMK',
      'PT.ABX',
      'Dibutuhkan karyawan toko untuk PT.ABX, laki-laki/perempuan, umur 18-30th, tidak dalam masa studi, dan berpenampilan menarik. Untuk info lebih lanjut hubungi kami.',
      27,
      2),
];
