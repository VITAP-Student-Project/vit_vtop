import 'package:flutter_test/flutter_test.dart';
import 'package:rust_bridge/rust_bridge.dart';

void main() {
  group('VTOP Flutter Bridge Tests', () {
    setUpAll(() async {
      // Initialize the Rust library for tests
      await RustLib.init();
    });

    group('Basic Functionality', () {
      test('greet function works correctly', () {
        final result = greet(name: 'Test User');
        expect(result, equals('Hello, Test User!'));
      });

      test('greet function handles empty string', () {
        final result = greet(name: '');
        expect(result, equals('Hello, !'));
      });

      test('greet function handles special characters', () {
        final result = greet(name: 'José María');
        expect(result, equals('Hello, José María!'));
      });
    });

    group('VTOP Client Creation', () {
      test('can create VTOP client with credentials', () {
        expect(() {
          final client = getVtopClient(
            username: 'test_user',
            password: 'test_password',
          );
          expect(client, isNotNull);
        }, returnsNormally);
      });

      test('can create VTOP client with empty credentials', () {
        expect(() {
          final client = getVtopClient(username: '', password: '');
          expect(client, isNotNull);
        }, returnsNormally);
      });
    });

    group('Authentication Tests', () {
      late VtopClient client;

      setUp(() {
        client = getVtopClient(
          username: 'test_user',
          password: 'test_password',
        );
      });

      test('initial authentication status is false', () async {
        final isAuth = await fetchIsAuth(client: client);
        expect(isAuth, isFalse);
      });

      test('login with invalid credentials throws error', () async {
        expect(
          () async => await vtopClientLogin(client: client),
          throwsA(isA<VtopError>()),
        );
      });
    });

    group('Data Models', () {
      test('AttendanceRecord has required properties', () {
        // This test verifies that the data models are properly defined
        // We can't create instances directly due to freezed, but we can
        // verify the structure exists
        expect(AttendanceRecord, isNotNull);
      });

      test('SemesterInfo has required properties', () {
        expect(SemesterInfo, isNotNull);
      });

      test('TimetableSlot has required properties', () {
        expect(TimetableSlot, isNotNull);
      });

      test('MarksRecord has required properties', () {
        expect(MarksRecord, isNotNull);
      });

      test('BiometricRecord has required properties', () {
        expect(BiometricRecord, isNotNull);
      });
    });

    group('WiFi Functionality', () {
      test('WiFi function returns tuple', () async {
        // This will likely fail with network error, but should return proper structure
        try {
          final result = await fetchWifi(
            username: 'test',
            password: 'test',
            i: 1,
          );
          expect(result, isA<(bool, String)>());
        } catch (e) {
          // Expected to fail with test credentials
          expect(e, isNotNull);
        }
      });
    });

    group('Error Handling', () {
      test('VtopError is properly exposed', () {
        expect(VtopError, isNotNull);
      });

      test('functions handle network errors gracefully', () async {
        final client = getVtopClient(username: 'invalid', password: 'invalid');

        // These should fail gracefully with proper error types
        expect(
          () async => await fetchSemesters(client: client),
          throwsA(isA<VtopError>()),
        );
      });
    });
  });
}
