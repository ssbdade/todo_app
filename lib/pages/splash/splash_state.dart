part of 'splash_cubit.dart';

class SplashState {
  final bool loading;

  const SplashState({
    this.loading = true,
  });

  SplashState copyWith({
    bool? loading,
  }) {
    return SplashState(
      loading: loading ?? this.loading,
    );
  }
}
