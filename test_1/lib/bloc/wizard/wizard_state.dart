part of 'wizard_bloc.dart';

abstract class WizardState extends Equatable {
  const WizardState();

  @override
  List<Object> get props => [];
}

class WizardInitial extends WizardState {}

class WizardLoading extends WizardState {}

class WizardSuccess extends WizardState {
  final List<Wizard>? data;
  const WizardSuccess(this.data);

  @override
  List<Object> get props => [data ?? []];
}

class WizardFailed extends WizardState {
  final String e;
  const WizardFailed(this.e);

  @override
  List<Object> get props => [e];
}
