part of 'models.dart';

class Loker {
  final int idLoker;
  final String posisi;
  final String pendMin;
  final String lokasi;
  final String deskripsiLoker;
  final int idDonatur;
  final int kategori;

  Loker(
      this.idLoker,
      this.posisi,
      this.pendMin,
      this.lokasi,
      this.deskripsiLoker,
      this.idDonatur,
      this.kategori);
}

List<Loker> dummyLoker = [
  Loker(
      1,
      'Karyawan toko',
      'SMA/SMK',
      'PT.ABX',
      'Dibutuhkan karyawan toko untuk PT.ABX, laki-laki/perempuan, umur 18-30th, tidak dalam masa studi, dan berpenampilan menarik. Untuk info lebih lanjut hubungi kami.',
      27,
      2
  ),
  Loker(
      2,
      'Kasir',
      'SMA/SMK',
      'PT.ABX',
      'Dibutuhkan karyawan toko untuk PT.ABX, laki-laki/perempuan, umur 18-30th, tidak dalam masa studi, dan berpenampilan menarik. Untuk info lebih lanjut hubungi kami.',
      27,
      2
  ),
  Loker(
      3,
      'Admin',
      'SMA/SMK',
      'PT.ABX',
      'Dibutuhkan karyawan toko untuk PT.ABX, laki-laki/perempuan, umur 18-30th, tidak dalam masa studi, dan berpenampilan menarik. Untuk info lebih lanjut hubungi kami.',
      27,
      2
  ),
];
