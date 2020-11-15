import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/pages/Info2.dart';
import 'package:sidebar_animation/pages/Info5.dart';
import 'package:sidebar_animation/pages/Info6.dart';
import '../pages/Info3.dart';
import '../pages/Info4.dart';
import '../pages/Testesenha.dart';
import '../pages/Info1.dart';

enum NavigationEvents {

  Testesenha,
  Info1,
  Info2,
  Info3,
  Info4,
  Info5,
  Info6,




}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Testesenha();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.Testesenha:
        yield Testesenha();
        break;
      case NavigationEvents.Info1:
        yield Info1();
        break;
      case NavigationEvents.Info2:
        yield Info2();
        break;

        case NavigationEvents.Info3:
        yield Info3();
        break;
         case NavigationEvents.Info4:
        yield Info4();
        break;
      case NavigationEvents.Info5:
        yield Info5();
        break;
      case NavigationEvents.Info6:
        yield Info6();
        break;

    }
  }
}
