part of 'models.dart';

class Ucapan {
  final int idUcapan;
  final String ucapan;
  final String namaPengirim;
  final String pathProfile;
  final String pekerjaan;
  final int idPenerima;

  Ucapan(
      this.idUcapan,
      this.ucapan,
      this.namaPengirim,
      this.pekerjaan,
      this.pathProfile,
      this.idPenerima);
}

List<Ucapan> dummyUcapan = [
  Ucapan(
      1,
      'Semoga Tuhan membalas kebaikan dari teman-teman yang telah membantu kami di masa sulit seperti ini',
      'Juminten',
      'Buruh pabrik',
      'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80K',
      1
  ),
  Ucapan(
      2,
      'Semoga Tuhan membalas kebaikan dari teman-teman yang telah membantu kami di masa sulit seperti ini',
      'Juminten',
      'Buruh pabrik',
      'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80K',
      3
  ),
  Ucapan(
      3,
      'Semoga Tuhan membalas kebaikan dari teman-teman yang telah membantu kami di masa sulit seperti ini',
      'Juminten',
      'Buruh pabrik',
      'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80K',
      2
  ),
];