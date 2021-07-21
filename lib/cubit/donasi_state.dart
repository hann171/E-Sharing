part of 'donasi_cubit.dart';

abstract class DonasiState extends Equatable {
  const DonasiState();

  @override
  List<Object> get props => [];
}

class DonasiInitial extends DonasiState {}

class DonasiDanaLoaded extends DonasiState {
  final List<DonasiDana> donasiDana;

  DonasiDanaLoaded(this.donasiDana);

  @override
  List<Object> get props => [donasiDana];
}
class DonasiNonDanaLoaded extends DonasiState {
  final List<DonasiNonDana> donasiNonDana;

  DonasiNonDanaLoaded(this.donasiNonDana);

  @override
  List<Object> get props => [donasiNonDana];
}

class DonasiDanaLoadingFailed extends DonasiState {
  final String message;
  DonasiDanaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
class DonasiNonDanaLoadingFailed extends DonasiState {
  final String message;
  DonasiNonDanaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}