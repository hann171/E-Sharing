part of 'penerima_cubit.dart';

abstract class PenerimaState extends Equatable {
  const PenerimaState();

  @override
  List<Object> get props => [];
}

class PenerimaInitial extends PenerimaState {}

class PenerimaLoaded extends PenerimaState {
  final List<UserPenerima> penerima;

  PenerimaLoaded(this.penerima);

  @override
  List<Object> get props => [penerima];
}

class PenerimaLoadingFailed extends PenerimaState {
  final String message;
  PenerimaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
