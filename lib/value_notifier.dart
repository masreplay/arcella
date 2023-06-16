import 'package:flutter/material.dart';

extension ValueNotifierX<T> on ValueNotifier<T> {
  T update(T newValue) => value = newValue;
}
