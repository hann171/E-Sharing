import 'package:bloc/bloc.dart';
import 'package:e_sharing/cubit/cubit.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'penerima_state.dart';

class PenerimaCubit extends Cubit<PenerimaState> {
  PenerimaCubit() : super(PenerimaInitial());

  Future<void> getPenerima() async {
    ApiReturnValue<List<UserPenerima>> result =
        await PenerimaServices.getPenerima();

    if (result.value != null) {
      emit(PenerimaLoaded(result.value!));
    } else {
      emit(PenerimaLoadingFailed(result.message!));
    }
  }
}
