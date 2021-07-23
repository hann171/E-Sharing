import 'package:bloc/bloc.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'donasi_state.dart';

class DonasiCubit extends Cubit<DonasiState> {
  DonasiCubit() : super(DonasiInitial());

  Future<void> getDonasiDana() async {
    ApiReturnValue<List<DonasiDana>> result =
        await DonasiDanaServices.getDonasiDana();

    if (result.value != null) {
      emit(DonasiDanaLoaded(result.value!));
    } else {
      emit(DonasiDanaLoadingFailed(result.message!));
    }
  }

  Future<bool> submitDonasiDana(DonasiDana donasiDana) async {
    ApiReturnValue<DonasiDana> result =
        await DonasiDanaServices.submitDonasiDana(donasiDana);

    if (result.value != null) {
      emit(DonasiDanaLoaded(
          (state as DonasiDanaLoaded).donasiDana + [result.value!]));
      return true;
    } else {
      return false;
    }
  }
}
