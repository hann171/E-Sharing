part of 'artikel_cubit.dart';

abstract class ArtikelState extends Equatable {
  const ArtikelState();

  @override
  List<Object> get props => [];
}

class ArtikelInitial extends ArtikelState {}

class ArtikelLoaded extends ArtikelState {
  final List<DonasiNonDana> artikel;

  ArtikelLoaded(this.artikel);

  @override
  List<Object> get props => [artikel];
}

class ArtikelLoadingFailed extends ArtikelState {
  final String message;

  ArtikelLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}