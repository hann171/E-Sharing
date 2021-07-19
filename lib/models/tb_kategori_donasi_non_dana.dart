part of 'models.dart';

class KategoriDonasiNonDana extends Equatable {
  final int idKategori;
  final String kategoriDonasi;

  KategoriDonasiNonDana(this.idKategori, this.kategoriDonasi);

  @override
  List<Object> get props => [idKategori, kategoriDonasi];
}

List<KategoriDonasiNonDana> dummyKategoriDonasi = [
  KategoriDonasiNonDana(1, "artikel"),
  KategoriDonasiNonDana(2, "loker")
];
