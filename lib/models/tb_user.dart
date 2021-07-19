part of 'models.dart';

enum TipeUsers { donatur, penerima }

class User extends Equatable {
  final String nik;
  final String password;
  final TipeUsers tipeUser;
  //final TipeUser idTipeUser;

  User(this.nik, this.password, this.tipeUser);

  List<Object> get props => [nik, password, tipeUser];
}

List<User> dummyUser = [
  User("3302241701000004", "123456", TipeUsers.donatur),
  User("3402241701000004", "123456", TipeUsers.donatur),
  User("3304427110000005", "123456", TipeUsers.penerima),
  User("3404427110000005", "123456", TipeUsers.penerima),
];
