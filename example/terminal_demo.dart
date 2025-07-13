/// Terminal demo showing how to use the VIT VTOP package
///
/// This example demonstrates how to:
/// 1. Initialize the Rust library
/// 2. Create a VTOP client
/// 3. Login to VTOP
/// 4. Fetch various academic data
///
/// Run this with: dart run example/terminal_demo.dart
library;

import 'dart:io';
import 'dart:convert';
import 'package:dotenv/dotenv.dart';
import 'package:vit_vtop/vit_vtop.dart';

Future<void> main() async {
  // Initialize the Rust library
  await RustLib.init();

  // Load environment variables
  final env = DotEnv(includePlatformEnvironment: true);
  try {
    env.load(['.env']);
  } catch (e) {
    print('Note: .env file not found, will prompt for credentials');
  }

  print('=== VIT VTOP Package Demo ===\n');

  // Get credentials from environment or user input
  String username = env['VTOP_USERNAME'] ?? '';
  String password = env['VTOP_PASSWORD'] ?? '';

  if (username.isEmpty || password.isEmpty) {
    print('Credentials not found in .env file, please enter manually:');

    if (username.isEmpty) {
      stdout.write('Enter your VTOP username: ');
      username = stdin.readLineSync() ?? '';
    }

    if (password.isEmpty) {
      stdout.write('Enter your VTOP password: ');
      stdin.echoMode = false;
      password = stdin.readLineSync() ?? '';
      stdin.echoMode = true;
      print('');
    }
  } else {
    print('Using credentials from .env file');
  }

  if (username.isEmpty || password.isEmpty) {
    print('Username and password are required!');
    exit(1);
  }

  try {
    // Create VTOP client
    print('Creating VTOP client...');
    final client = getVtopClient(username: username, password: password);

    // Login
    print('Logging in to VTOP...');
    await vtopClientLogin(client: client);
    print('✓ Successfully logged in!\n');

    // Fetch semesters
    print('Fetching available semesters...');
    final semesters = await fetchSemesters(client: client);
    print('Found ${semesters.semesters.length} semesters:');
    for (final sem in semesters.semesters) {
      print('  - ${sem.name} (ID: ${sem.id})');
    }
    print('');

    if (semesters.semesters.isNotEmpty) {
      final currentSemester = semesters.semesters.first;
      print('Using semester: ${currentSemester.name}\n');

      // Fetch attendance
      print('Fetching attendance data...');
      final attendance = await fetchAttendance(
        client: client,
        semesterId: currentSemester.id,
      );

      print('Attendance JSON:');
      final attendanceJson =
          attendance.map((record) => record.toJson()).toList();
      print(const JsonEncoder.withIndent('  ').convert(attendanceJson));
      print('');

      // Fetch timetable
      print('Fetching timetable...');
      final timetable = await fetchTimetable(
        client: client,
        semesterId: currentSemester.id,
      );

      print('Timetable JSON:');
      final timetableJson = timetable.map((slot) => slot.toJson()).toList();
      print(const JsonEncoder.withIndent('  ').convert(timetableJson));
      print('');

      // Fetch marks
      print('Fetching marks...');
      final marks = await fetchMarks(
        client: client,
        semesterId: currentSemester.id,
      );

      print('Marks JSON:');
      final marksJson = marks.map((record) => record.toJson()).toList();
      print(const JsonEncoder.withIndent('  ').convert(marksJson));
    }

    print('\n✓ Demo completed successfully!');
  } catch (e) {
    print('Error: $e');
    exit(1);
  }
}
