part of 'models.dart';

class Penerima {
  final String nik;
  final String namaDepan;
  final String namaBelakang;
  final String alamat;
  final String noTelp;
  final String noRekening;
  final String deskripsiEkonomi;
  final String pathPHK;
  final String pathRumah;
  final String pathProfile;
  final int umur;
  final double jumlahDana;
  final int status;
  final String pekerjaan;

  Penerima(
      this.nik,
      this.namaDepan,
      this.namaBelakang,
      this.alamat,
      this.noTelp,
      this.noRekening,
      this.deskripsiEkonomi,
      this.pathPHK,
      this.pathRumah,
      this.pathProfile,
      this.umur,
      this.jumlahDana,
      this.status,
      this.pekerjaan);
}

List<Penerima> dummyPenerima = [
  Penerima(
      '33022430080300004',
      'Susanti',
      'Putri',
      'Jl. Jend. Soedirman, No.125, RT 01/02',
      '088833214569',
      '4413355249',
      'Saya seorang janda, mempunyai 2 orang anak umur 5 tahun dan 9 tahun. Saya bekerja sebagai buruh pabrik di sebuah pabrik makeup di kota.',
      'https://contohsurat.co/wp-content/uploads/2018/03/contoh2Bsurat2Bphk2Bkarena2Bperusahaan2Bpailit.jpg',
      'http://diktis.kemenag.go.id/v1/public/files/3001553395650SAVE20190324094556.jpeg',
      'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
      27,
      250000,
      2,
      'Nursing Assistant'),
  Penerima(
      '33022430080300005',
      'Vero',
      'Putri',
      'Jl. Jend. Soedirman, No.125, RT 01/02',
      '088833214569',
      '4413355249',
      'Saya seorang janda, mempunyai 2 orang anak umur 5 tahun dan 9 tahun. Saya bekerja sebagai buruh pabrik di sebuah pabrik makeup di kota.',
      'https://contohsurat.co/wp-content/uploads/2018/03/contoh2Bsurat2Bphk2Bkarena2Bperusahaan2Bpailit.jpg',
      'http://diktis.kemenag.go.id/v1/public/files/3001553395650SAVE20190324094556.jpeg',
      'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
      32,
      124000,
      2,
      'Medical Assistant'),
  Penerima(
      '33022430080300006',
      'Putri',
      'Putri',
      'Jl. Jend. Soedirman, No.125, RT 01/02',
      '088833214569',
      '4413355249',
      'Saya seorang janda, mempunyai 2 orang anak umur 5 tahun dan 9 tahun. Saya bekerja sebagai buruh pabrik di sebuah pabrik makeup di kota.',
      'https://contohsurat.co/wp-content/uploads/2018/03/contoh2Bsurat2Bphk2Bkarena2Bperusahaan2Bpailit.jpg',
      'http://diktis.kemenag.go.id/v1/public/files/3001553395650SAVE20190324094556.jpeg',
      'https://matematika.fkip.umrah.ac.id/wp-content/uploads/sites/3/2019/12/SANTI..jpg',
      44,
      175000,
      2,
      'President of Sales'),
];
