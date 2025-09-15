import 'package:flutter_test/flutter_test.dart';
import 'package:test-final-fix/domain/entities/user.dart';

void main() {
  group('User Entity Tests', () {
    test('should create User instance correctly', () {
      final user = User(
        id: 'test-id',
        createdAt: DateTime.now(),
      );

      expect(user.id, 'test-id');
      expect(user.createdAt, isA<DateTime>());
    });

    test('should support equality comparison', () {
      final now = DateTime.now();
      final user1 = User(
        id: 'test-id',
        createdAt: now,
      );
      final user2 = User(
        id: 'test-id',
        createdAt: now,
      );

      expect(user1, equals(user2));
    });
  });
}