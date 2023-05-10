import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_1/models/model.dart';
import 'package:test_1/services/service.dart';

part 'wizard_event.dart';
part 'wizard_state.dart';

class WizardBloc extends Bloc<WizardEvent, WizardState> {
  WizardBloc() : super(WizardInitial()) {
    on<WizardEvent>((event, emit) async {
      if (event is GetAllWizardByDio) {
        try {
          emit(WizardLoading());
          final wizards = await WizardDio().getAllWizardByDio();
          emit(WizardSuccess(wizards));
        } catch (e) {
          emit(WizardFailed(e.toString()));
        }
      }
      if (event is GetAllWizardByHttp) {
        try {
          emit(WizardLoading());
          final wizards = await WizardHttp().getAllWizardByHttp();
          emit(WizardSuccess(wizards));
        } catch (e) {
          emit(WizardFailed(e.toString()));
        }
      }
    });
  }
}
