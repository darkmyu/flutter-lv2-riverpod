import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation';
}
