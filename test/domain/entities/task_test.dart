import 'package:flutter_test/flutter_test.dart';
import 'package:test-final-fix/domain/entities/task.dart';

void main() {
  group('Task Entity Tests', () {
    test('should create Task instance correctly', () {
      final task = Task(
        id: 'test-id',
        createdAt: DateTime.now(),
      );

      expect(task.id, 'test-id');
      expect(task.createdAt, isA<DateTime>());
    });

    test('should support equality comparison', () {
      final now = DateTime.now();
      final task1 = Task(
        id: 'test-id',
        createdAt: now,
      );
      final task2 = Task(
        id: 'test-id',
        createdAt: now,
      );

      expect(task1, equals(task2));
    });
  });
}