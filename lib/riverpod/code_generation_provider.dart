import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(const Duration(seconds: 3));

  return 10;
}

@Riverpod(
  keepAlive: true,
)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  await Future.delayed(const Duration(seconds: 3));

  return 10;
}

@riverpod
int gStateMultiply(
  GStateMultiplyRef ref, {
  required int number1,
  required int number2,
}) {
  return number1 * number2;
}

@riverpod
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}
