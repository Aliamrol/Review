import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:uni/models/card_entity.dart';

part 'flash_card_event.dart';

part 'flash_card_state.dart';

class FlashCardBloc extends Bloc<FlashCardEvent, FlashCardState> {
  FlashCardBloc() : super(FlashCardInitialState()) {
    on<FlashCardEvent>((event, emit) {
      if (event is FlashCardNextEvent){
        print("NEXT");
      }
    });
  }
}
