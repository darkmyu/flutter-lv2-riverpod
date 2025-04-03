import 'package:flutter/material.dart';
import 'package:flutter_lv2_riverpod/riverpod/provider_observer.dart';
import 'package:flutter_lv2_riverpod/screen/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        Logger(),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
