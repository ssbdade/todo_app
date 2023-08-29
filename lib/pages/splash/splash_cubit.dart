import 'package:bloc/bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  void autoLogin() async {
    emit(state.copyWith(loading: true));
    await Future.delayed(const Duration(milliseconds: 3000,),);
    emit(state.copyWith(loading: false));
  }

}
