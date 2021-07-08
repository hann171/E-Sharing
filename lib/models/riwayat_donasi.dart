part of 'models.dart';

class RiwayatDonasi extends Equatable {
  final int id;
  final String namaDepanDonatur;
  final String role;
  final double jumlahDana;
  final DateTime tanggalDonasi;

  RiwayatDonasi(this.id, this.namaDepanDonatur, this.role, this.jumlahDana,
      this.tanggalDonasi);

  @override
  List<Object> get props =>
      [id, namaDepanDonatur, role, jumlahDana, tanggalDonasi];
}

List<RiwayatDonasi> dummyRiwayatDonasi = [
  RiwayatDonasi(1, 'Susi', 'Donatur', 100000, DateTime.now()),
  RiwayatDonasi(2, 'Susi', 'Donatur', 75000, DateTime.now()),
  RiwayatDonasi(3, 'Susi', 'Donatur', 50000, DateTime.now()),
];
