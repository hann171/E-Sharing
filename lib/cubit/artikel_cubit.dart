import 'package:bloc/bloc.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'artikel_state.dart';

class ArtikelCubit extends Cubit<ArtikelState> {
  ArtikelCubit() : super(ArtikelInitial());

  Future<void> getArtikel() async {
    ApiReturnValue<List<DonasiNonDana>> result =
        await DonasiNonDanaServices.getDonasiNonDana();

    if (result.value != null) {
      emit(ArtikelLoaded(result.value!));
    } else {
      emit(ArtikelLoadingFailed(result.message!));
    }
  }
}
