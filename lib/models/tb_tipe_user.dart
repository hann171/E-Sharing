part of 'models.dart';

class TipeUser extends Equatable {
  final int idTipeUser;
  final String tipeUser;

  TipeUser(this.idTipeUser, this.tipeUser);

  List<Object> get props => [
        idTipeUser,
        tipeUser
      ];
}

List<TipeUser> dummyTipeUser = [
  TipeUser(1, "donatur"),
  TipeUser(2, "penerima")
];
