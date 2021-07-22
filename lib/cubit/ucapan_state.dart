part of 'ucapan_cubit.dart';

abstract class UcapanState extends Equatable {
  const UcapanState();

  @override
  List<Object> get props => [];
}

class UcapanInitial extends UcapanState {}

class UcapanLoaded extends UcapanState{
  final List<UcapanTerimakasih> ucapan;
  UcapanLoaded(this.ucapan);

  @override
  List<Object> get props => [ucapan];
}

class UcapanLoadingFailed extends UcapanState {
  final String message;
  UcapanLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}