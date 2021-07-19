part of 'models.dart';

enum StatusDonasiNonDana { terverifikasi, belumVerifikasi }
enum KategoriDonasi { artikel, loker }

class DonasiNonDana extends Equatable {
  final int idDonasiNonDana;
  final UserDonatur donatur;
  final String judul;
  final String deskripsi;
  final String pathMedia;
  final String posisiLoker;
  final String pendMinLoker;
  final String lokasiLoker;
  //final StatusDonasi status;
  final StatusDonasiNonDana status;
  //final KategoriDonasiNonDana kategoriDonasi;
  final KategoriDonasi kategori;

  DonasiNonDana(
      this.idDonasiNonDana,
      this.donatur,
      this.judul,
      this.deskripsi,
      this.pathMedia,
      this.posisiLoker,
      this.pendMinLoker,
      this.lokasiLoker,
      this.status,
      this.kategori);

  @override
  List<Object> get props => [
        idDonasiNonDana,
        donatur,
        judul,
        deskripsi,
        pathMedia,
        posisiLoker,
        pendMinLoker,
        lokasiLoker,
        status,
        kategori
      ];
}

List<DonasiNonDana> dummyDonasiNonDana = [
  DonasiNonDana(
      1,
      dummyUserDonatur[0],
      "A",
      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      "images/artikelA.jpg",
      "",
      "",
      "",
      StatusDonasiNonDana.terverifikasi,
      KategoriDonasi.artikel),
  DonasiNonDana(
      2,
      dummyUserDonatur[1],
      "B",
      "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
      "images/artikelB.jpg",
      "",
      "",
      "",
      StatusDonasiNonDana.terverifikasi,
      KategoriDonasi.artikel),
  DonasiNonDana(
      3,
      dummyUserDonatur[0],
      "Aa",
      "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      "images/lokerA.jpg",
      "Karyawan Toko",
      "SMA/SMK",
      "PT.AAA",
      StatusDonasiNonDana.terverifikasi,
      KategoriDonasi.loker),
  DonasiNonDana(
      4,
      dummyUserDonatur[1],
      "Bb",
      "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
      "images/lokerB.jpg",
      "Admin",
      "SMA/SMK",
      "PT.BBB",
      StatusDonasiNonDana.terverifikasi,
      KategoriDonasi.loker),
  DonasiNonDana(
      5,
      dummyUserDonatur[1],
      "Cc",
      "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC",
      "images/lokerC.jpg",
      "Staff Akuntansi",
      "D3 Akuntansi",
      "PT.AAA",
      StatusDonasiNonDana.belumVerifikasi,
      KategoriDonasi.loker),
  DonasiNonDana(
      6,
      dummyUserDonatur[0],
      "C",
      "ccccccccccccccccccccccccccccccccc",
      "images/artikelC.jpg",
      "",
      "",
      "",
      StatusDonasiNonDana.belumVerifikasi,
      KategoriDonasi.artikel),
];
