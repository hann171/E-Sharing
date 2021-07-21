part of 'models.dart';

enum StatusDonasiDana { terverifikasi, belumVerifikasi }

class DonasiDana extends Equatable {
  final int? idDonasiDana;
  final UserDonatur? donatur;
  final UserPenerima? penerima;
  final String? jumlahDana;
  final DateTime? tglDonasi;
  final String? pathBuktiTransfer;
  //final StatusDonasi status;
  final StatusDonasiDana? status;

  DonasiDana(
      {this.idDonasiDana,
      this.donatur,
      this.penerima,
      this.jumlahDana,
      this.tglDonasi,
      this.pathBuktiTransfer,
      this.status});

  DonasiDana copyWith(
      {int? id,
      UserDonatur? donatur,
      UserPenerima? penerima,
      String? jumlahDana,
      DateTime? tglDonasi,
      String? pathBuktiTransfer,
      StatusDonasiDana? status}) {
    return DonasiDana(
        idDonasiDana: id ?? this.idDonasiDana,
        donatur: donatur ?? this.donatur,
        penerima: penerima ?? this.penerima,
        jumlahDana: jumlahDana ?? this.jumlahDana,
        tglDonasi: tglDonasi ?? this.tglDonasi,
        pathBuktiTransfer: pathBuktiTransfer ?? this.pathBuktiTransfer,
        status: status ?? this.status);
  }

  @override
  List<Object?> get props => [
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
  DonasiDana(
      idDonasiDana: 1,
      donatur: dummyUserDonatur[0],
      penerima: dummyUserPenerima[0],
      jumlahDana: "100000",
      tglDonasi: DateTime.now(),
      pathBuktiTransfer: "image/donasidana.jpg",
      status: StatusDonasiDana.terverifikasi),
  DonasiDana(
      idDonasiDana: 2,
      donatur: dummyUserDonatur[1],
      penerima: dummyUserPenerima[0],
      jumlahDana: "125000",
      tglDonasi: DateTime.now(),
      pathBuktiTransfer: "image/donasidana.jpg",
      status: StatusDonasiDana.terverifikasi),
  DonasiDana(
      idDonasiDana: 3,
      donatur: dummyUserDonatur[1],
      penerima: dummyUserPenerima[1],
      jumlahDana: "200000",
      tglDonasi: DateTime.now(),
      pathBuktiTransfer: "image/donasidana.jpg",
      status: StatusDonasiDana.terverifikasi),
  DonasiDana(
      idDonasiDana: 4,
      donatur: dummyUserDonatur[1],
      penerima: dummyUserPenerima[0],
      jumlahDana: "50000",
      tglDonasi: DateTime.now(),
      pathBuktiTransfer: "image/donasidana.jpg",
      status: StatusDonasiDana.belumVerifikasi),
  DonasiDana(
      idDonasiDana: 5,
      donatur: dummyUserDonatur[0],
      penerima: dummyUserPenerima[0],
      jumlahDana: "75000",
      tglDonasi: DateTime.now(),
      pathBuktiTransfer: "image/donasidana.jpg",
      status: StatusDonasiDana.belumVerifikasi),
];
