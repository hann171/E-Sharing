part of 'loker_cubit.dart';

abstract class LokerState extends Equatable {
  const LokerState();

  @override
  List<Object> get props => [];
}

class LokerInitial extends LokerState {}

class LokerLoaded extends LokerState {
  final List<DonasiNonDana> loker;

  LokerLoaded(this.loker);

  @override
  List<Object> get props => [loker];
}

class LokerLoadingFailed extends LokerState {
  final String message;

  LokerLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
