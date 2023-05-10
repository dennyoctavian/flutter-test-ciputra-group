import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_2/services/push_notif_service.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) async {
      if (event is Increment) {
        int number = 0;
        emit(CounterAdd(number));
        while (true) {
          await Future.delayed(const Duration(seconds: 5));
          if (number != 0 && number % 6 == 0) {
            PushNotificationService().sendNotif(number);
          }
          emit(CounterAdd(number));
          number++;
        }
      }
    });
  }
}
