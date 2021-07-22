import 'package:bloc/bloc.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'loker_state.dart';

class LokerCubit extends Cubit<LokerState> {
  LokerCubit() : super(LokerInitial());

  Future<void> getLoker() async {
    ApiReturnValue<List<DonasiNonDana>> result =
        await DonasiNonDanaServices.getDonasiNonDana();

    if (result.value != null) {
      emit(LokerLoaded(result.value!));
    } else {
      emit(LokerLoadingFailed(result.message!));
    }
  }
}
