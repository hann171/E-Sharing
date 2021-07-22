import 'package:bloc/bloc.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'donasi_state.dart';

class DonasiCubit extends Cubit<DonasiState> {
  DonasiCubit() : super(DonasiInitial());

  Future<void> getDonasiNonDana() async {
    ApiReturnValue<List<DonasiNonDana>> result =
        await DonasiNonDanaServices.getDonasiNonDana();

    if (result.value != null) {
      emit(DonasiNonDanaLoaded(result.value!));
    } else {
      emit(DonasiNonDanaLoadingFailed(result.message!));
    }
  }

}
