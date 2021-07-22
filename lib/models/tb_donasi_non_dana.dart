part of 'models.dart';

enum StatusDonasiNonDana { terverifikasi, belumVerifikasi }
enum KategoriDonasi { artikel, loker }

class DonasiNonDana extends Equatable {
  final int? idDonasiNonDana;
  final User? donatur;
  final String? judul;
  final String? deskripsi;
  final String? pathMedia;
  final String? posisiLoker;
  final String? pendMinLoker;
  final String? lokasiLoker;
  //final StatusDonasi status;
  final StatusDonasiNonDana? status;
  //final KategoriDonasiNonDana kategoriDonasi;
  final KategoriDonasi? kategori;

  DonasiNonDana(
      {this.idDonasiNonDana,
      this.donatur,
      this.judul,
      this.deskripsi,
      this.pathMedia,
      this.posisiLoker,
      this.pendMinLoker,
      this.lokasiLoker,
      this.status,
      this.kategori});

  DonasiNonDana copyWith(
      {int? id,
      User? donatur,
      String? judul,
      String? deskripsi,
      String? pathMedia,
      String? posisiLoker,
      String? pendMinLoker,
      String? lokasiLoker,
      StatusDonasiNonDana? status,
      KategoriDonasi? kategori}) {
    return DonasiNonDana(
        idDonasiNonDana: id ?? this.idDonasiNonDana,
        donatur: donatur ?? this.donatur,
        judul: judul ?? this.judul,
        deskripsi: deskripsi ?? this.deskripsi,
        pathMedia: pathMedia ?? this.pathMedia,
        posisiLoker: posisiLoker ?? this.posisiLoker,
        pendMinLoker: pendMinLoker ?? this.pendMinLoker,
        lokasiLoker: lokasiLoker ?? this.lokasiLoker,
        status: status ?? this.status,
        kategori: kategori ?? this.kategori);
  }

  @override
  List<Object?> get props => [
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
      idDonasiNonDana: 1,
      donatur: dummyUser[0],
      judul: "A",
      deskripsi: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      pathMedia: "images/artikelA.jpg",
      posisiLoker: "",
      pendMinLoker: "",
      lokasiLoker: "",
      status: StatusDonasiNonDana.terverifikasi,
      kategori: KategoriDonasi.artikel),
  DonasiNonDana(
      idDonasiNonDana: 2,
      donatur: dummyUser[1],
      judul: "B",
      deskripsi: "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
      pathMedia: "images/artikelB.jpg",
      posisiLoker: "",
      pendMinLoker: "",
      lokasiLoker: "",
      status: StatusDonasiNonDana.terverifikasi,
      kategori: KategoriDonasi.artikel),
  DonasiNonDana(
      idDonasiNonDana: 3,
      donatur: dummyUser[0],
      judul: "Aa",
      deskripsi: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      pathMedia: "images/lokerA.jpg",
      posisiLoker: "Karyawan Toko",
      pendMinLoker: "SMA/SMK",
      lokasiLoker: "PT.AAA",
      status: StatusDonasiNonDana.terverifikasi,
      kategori: KategoriDonasi.loker),
  DonasiNonDana(
      idDonasiNonDana: 4,
      donatur: dummyUser[1],
      judul: "Bb",
      deskripsi: "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
      pathMedia: "images/lokerB.jpg",
      posisiLoker: "Admin",
      pendMinLoker: "SMA/SMK",
      lokasiLoker: "PT.BBB",
      status: StatusDonasiNonDana.terverifikasi,
      kategori: KategoriDonasi.loker),
  DonasiNonDana(
      idDonasiNonDana: 5,
      donatur: dummyUser[1],
      judul: "Cc",
      deskripsi: "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC",
      pathMedia: "images/lokerC.jpg",
      posisiLoker: "Staff Akuntansi",
      pendMinLoker: "D3 Akuntansi",
      lokasiLoker: "PT.AAA",
      status: StatusDonasiNonDana.belumVerifikasi,
      kategori: KategoriDonasi.loker),
  DonasiNonDana(
      idDonasiNonDana: 6,
      donatur: dummyUser[0],
      judul: "C",
      deskripsi: "ccccccccccccccccccccccccccccccccc",
      pathMedia: "images/artikelC.jpg",
      posisiLoker: "",
      pendMinLoker: "",
      lokasiLoker: "",
      status: StatusDonasiNonDana.belumVerifikasi,
      kategori: KategoriDonasi.artikel),
];
