part of 'models.dart';

class Artikel extends Equatable {
  final int idArtikel;
  final String judul;
  final String pathMedia;
  final String deskripsiArtikel;
  final int idDonatur;
  final int idKategori;

  Artikel(
      this.idArtikel,
      this.judul,
      this.pathMedia,
      this.deskripsiArtikel,
      this.idDonatur,
      this.idKategori);
  
  @override
  List<Object> get props =>
      [idArtikel, judul, pathMedia, deskripsiArtikel, idDonatur, idKategori];
}

List<Artikel> dummyArtikel = [
  Artikel(
      1,
      'Cara membuat chicken wings gurih dan renyah',
      'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80K',
      'Jakarta - Trik membuat ayam goreng renyah dari seorang chef Australia ini viral di TikTok. Apa resep rahasia agar ayam goreng jadi kriuk renyah?\nAyam goreng tepung atau fried chicken merupakan makanan cepat saji Amerika yang kini populer di dunia. Banyak resep dibagikan untuk membuat ayam goreng yang garing, renyah dan super gurih.',
      27,
      1
  ),
  Artikel(
      2,
      'Belajar membuat foto produk lebih menarik',
      'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80K',
      'Jakarta - Trik membuat ayam goreng renyah dari seorang chef Australia ini viral di TikTok. Apa resep rahasia agar ayam goreng jadi kriuk renyah?\nAyam goreng tepung atau fried chicken merupakan makanan cepat saji Amerika yang kini populer di dunia. Banyak resep dibagikan untuk membuat ayam goreng yang garing, renyah dan super gurih.',
      27,
      1
  ),
  Artikel(
      3,
      'Sosial media marketing untuk ibu rumah tangga',
      'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80K',
      'Jakarta - Trik membuat ayam goreng renyah dari seorang chef Australia ini viral di TikTok. Apa resep rahasia agar ayam goreng jadi kriuk renyah?\nAyam goreng tepung atau fried chicken merupakan makanan cepat saji Amerika yang kini populer di dunia. Banyak resep dibagikan untuk membuat ayam goreng yang garing, renyah dan super gurih.',
      27,
      1
  ),
];