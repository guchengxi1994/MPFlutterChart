import 'package:flutter/material.dart';

Widget buildFuture(Widget child, dynamic future) {
  return FutureBuilder(
      future: future,
      builder: (c, s) {
        if (s.connectionState == ConnectionState.done) {
          return child;
        }
        return const CircularProgressIndicator();
      });
}
