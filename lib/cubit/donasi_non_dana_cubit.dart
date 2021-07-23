import 'package:bloc/bloc.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'donasi_non_dana_state.dart';

class DonasiNonDanaCubit extends Cubit<DonasiNonDanaState> {
  DonasiNonDanaCubit() : super(DonasiNonDanaInitial());

  Future<void> getDonasiNonDana() async {
    ApiReturnValue<List<DonasiNonDana>> result =
        await DonasiNonDanaServices.getDonasiNonDana();

    if (result.value != null) {
      emit(DonasiNonDanaLoaded(result.value!));
    } else {
      emit(DonasiNonDanaLoadingFailed(result.message!));
    }
  }

  Future<bool> submitDonasiNonDana(DonasiNonDana donasiNonDana) async {
    ApiReturnValue<DonasiNonDana> result =
        await DonasiNonDanaServices.submitDonasiNonDana(donasiNonDana);

    if (result.value != null) {
      emit(DonasiNonDanaLoaded(
          (state as DonasiNonDanaLoaded).donasiNonDana + [result.value!]));
      return true;
    } else {
      return false;
    }
  }
}
