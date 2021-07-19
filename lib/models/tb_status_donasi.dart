part of 'models.dart';

class StatusDonasi extends Equatable {
  final int idStatus;
  final String statusDonasi;

  StatusDonasi(this.idStatus, this.statusDonasi);

  @override
  List<Object> get props => [idStatus, statusDonasi];
}

List<StatusDonasi> dummyStatusDonasi = [
  StatusDonasi(1, "terverifikasi"),
  StatusDonasi(2, "belum diverifikasi")
];
