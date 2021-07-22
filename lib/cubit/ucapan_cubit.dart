import 'package:bloc/bloc.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/services/services.dart';
import 'package:equatable/equatable.dart';

part 'ucapan_state.dart';

class UcapanCubit extends Cubit<UcapanState> {
  UcapanCubit() : super(UcapanInitial());

  Future<void> getUcapan() async {
    ApiReturnValue<List<UcapanTerimakasih>> result =
        await UcapanServices.getUcapan();

    if (result.value != null) {
      emit(UcapanLoaded(result.value!));
    } else {
      emit(UcapanLoadingFailed(result.message!));
    }
  }
}
