part of 'donasi_non_dana_cubit.dart';

abstract class DonasiNonDanaState extends Equatable {
  const DonasiNonDanaState();

  @override
  List<Object> get props => [];
}

class DonasiNonDanaInitial extends DonasiNonDanaState {}

class DonasiNonDanaLoaded extends DonasiNonDanaState {
  final List<DonasiNonDana> donasiNonDana;

  DonasiNonDanaLoaded(this.donasiNonDana);

  @override
  List<Object> get props => [donasiNonDana];
}

class DonasiNonDanaLoadingFailed extends DonasiNonDanaState {
  final String message;
  DonasiNonDanaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}