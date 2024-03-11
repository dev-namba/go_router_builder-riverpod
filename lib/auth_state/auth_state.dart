import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  FutureOr<bool> build() {
    return false;
  }

  Future<void> signIn() async {
    await Future.delayed(const Duration(seconds: 1));
    state = AsyncData(true);
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    state = AsyncData(false);
  }
}
