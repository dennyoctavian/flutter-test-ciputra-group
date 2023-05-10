part of 'wizard_bloc.dart';

abstract class WizardEvent extends Equatable {
  const WizardEvent();

  @override
  List<Object> get props => [];
}

class GetAllWizardByDio extends WizardEvent {}

class GetAllWizardByHttp extends WizardEvent {}
