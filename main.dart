import 'dart:typed_data';

import 'benchmark_harness/benchmark_harness.dart';
import 'vector_math/vector_math_operations.dart';

void main() {
  // runOnce();
  SkeletalAnimation().report();
}

// void runOnce() {
//   final Float32List A = Float32List(16);
//   final Float32List B = Float32List(16);
//   final Float32List C = Float32List(16);
//   final Float32List D = Float32List(4);
//   final Float32List E = Float32List(4);
//
//   for (int i = 0; i < 100; i++) {
//     Matrix44Operations.multiply(C, 0, A, 0, B, 0);
//     Matrix44Operations.transform4(E, 0, A, 0, D, 0);
//   }
// }

class SkeletalAnimation extends BenchmarkBase {
  SkeletalAnimation() : super('SkeletalAnimation');

  final Float32List A = Float32List(16);
  final Float32List B = Float32List(16);
  final Float32List C = Float32List(16);
  final Float32List D = Float32List(4);
  final Float32List E = Float32List(4);

  @override
  void run() {
    for (int i = 0; i < 100; i++) {
      Matrix44Operations.multiply(C, 0, A, 0, B, 0);
      Matrix44Operations.transform4(E, 0, A, 0, D, 0);
    }
  }
}
