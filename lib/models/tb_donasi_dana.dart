part of 'models.dart';

enum StatusDonasiDana { terverifikasi, belumVerifikasi }

class DonasiDana extends Equatable {
  final int idDonasiDana;
  final UserDonatur donatur;
  final UserPenerima penerima;
  final String jumlahDana;
  final DateTime tglDonasi;
  final String pathBuktiTransfer;
  //final StatusDonasi status;
  final StatusDonasiDana status;

  DonasiDana(this.idDonasiDana, this.donatur, this.penerima, this.jumlahDana,
      this.tglDonasi, this.pathBuktiTransfer, this.status);

  @override
  List<Object> get props => [
        idDonasiDana,
        donatur,
        penerima,
        jumlahDana,
        tglDonasi,
        pathBuktiTransfer,
        status
      ];
}

List<DonasiDana> dummyDonasiDana = [
  DonasiDana(1, dummyUserDonatur[0], dummyUserPenerima[0], "100000",
      DateTime.now(), "image/donasidana.jpg", StatusDonasiDana.terverifikasi),
  DonasiDana(2, dummyUserDonatur[1], dummyUserPenerima[0], "125000",
      DateTime.now(), "image/donasidana.jpg", StatusDonasiDana.terverifikasi),
  DonasiDana(3, dummyUserDonatur[1], dummyUserPenerima[1], "200000",
      DateTime.now(), "image/donasidana.jpg", StatusDonasiDana.terverifikasi),
  DonasiDana(4, dummyUserDonatur[1], dummyUserPenerima[0], "50000",
      DateTime.now(), "image/donasidana.jpg", StatusDonasiDana.belumVerifikasi),
  DonasiDana(5, dummyUserDonatur[0], dummyUserPenerima[0], "75000",
      DateTime.now(), "image/donasidana.jpg", StatusDonasiDana.belumVerifikasi),
];
