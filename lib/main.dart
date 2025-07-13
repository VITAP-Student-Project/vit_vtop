import 'dart:io';
import 'dart:convert';
import 'package:dotenv/dotenv.dart';
import 'package:vit_vtop/vit_vtop.dart';

Future<void> main() async {
  await RustLib.init();

  // Load environment variables
  final env = DotEnv(includePlatformEnvironment: true);
  try {
    env.load(['.env']);
  } catch (e) {
    // .env file doesn't exist or couldn't be loaded
    print('Note: .env file not found, will prompt for credentials');
  }

  print('=== VTOP Terminal Client ===');
  print('Welcome to VIT VTOP Command Line Interface\n');

  // Get login credentials from environment or user input
  String username = env['VTOP_USERNAME'] ?? '';
  String password = env['VTOP_PASSWORD'] ?? '';

  if (username.isEmpty || password.isEmpty) {
    print('Credentials not found in .env file, please enter manually:');

    if (username.isEmpty) {
      stdout.write('Enter Username: ');
      username = stdin.readLineSync() ?? '';
    } else {
      print('Using username from .env: $username');
    }

    if (password.isEmpty) {
      stdout.write('Enter Password: ');
      stdin.echoMode = false; // Hide password input
      password = stdin.readLineSync() ?? '';
      stdin.echoMode = true;
      print('');
    } else {
      print('Using password from .env file');
    }
  } else {
    print('Using credentials from .env file');
    print('Username: $username');
  }

  if (username.isEmpty || password.isEmpty) {
    print('Error: Username and password cannot be empty');
    exit(1);
  }

  try {
    // Create VTOP client
    print('Creating VTOP client...');
    final client = getVtopClient(username: username, password: password);
    print('✓ Client created successfully');

    // Login
    print('Logging in...');
    await vtopClientLogin(client: client);
    print('✓ Login successful\n');

    // Main menu loop
    while (true) {
      print('=== VTOP Actions ===');
      print('1. Fetch Semesters');
      print('2. Fetch Attendance');
      print('3. Fetch Timetable');
      print('4. Fetch Marks');
      print('5. Fetch Exam Schedule');
      print('6. Test Rust Bridge');
      print('0. Exit');
      stdout.write('\nSelect an option (0-6): ');

      final choice = stdin.readLineSync() ?? '';
      print('');

      switch (choice) {
        case '1':
          await fetchAndDisplaySemesters(client);
          break;
        case '2':
          await fetchAndDisplayAttendance(client);
          break;
        case '3':
          await fetchAndDisplayTimetable(client);
          break;
        case '4':
          await fetchAndDisplayMarks(client);
          break;
        case '5':
          await fetchAndDisplayExamSchedule(client);
          break;
        case '6':
          testRustBridge();
          break;
        case '0':
          print('Goodbye!');
          exit(0);
        default:
          print('Invalid option. Please try again.\n');
      }
    }
  } catch (e) {
    print('Error: $e');
    exit(1);
  }
}

void testRustBridge() {
  try {
    final greeting = greet(name: "VTOP Terminal User");
    print('Rust bridge test result: $greeting\n');
  } catch (e) {
    print('Rust bridge test failed: $e\n');
  }
}

Future<void> fetchAndDisplaySemesters(VtopClient client) async {
  try {
    print('Fetching semesters...');
    final semesters = await fetchSemesters(client: client);

    print('✓ Found ${semesters.semesters.length} semesters:');
    print('\n=== SEMESTERS JSON ===');
    print(const JsonEncoder.withIndent('  ').convert(semesters.toJson()));
    print('');
  } catch (e) {
    print('Error fetching semesters: $e\n');
  }
}

Future<void> fetchAndDisplayAttendance(VtopClient client) async {
  try {
    // First get semesters to choose from
    final semesters = await fetchSemesters(client: client);

    if (semesters.semesters.isEmpty) {
      print('No semesters found.');
      return;
    }

    print('Available semesters:');
    for (int i = 0; i < semesters.semesters.length; i++) {
      print('${i + 1}. ${semesters.semesters[i].name}');
    }

    stdout.write('Select semester (1-${semesters.semesters.length}): ');
    final choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (choice < 1 || choice > semesters.semesters.length) {
      print('Invalid choice.\n');
      return;
    }

    final selectedSemester = semesters.semesters[choice - 1];
    print('Fetching attendance for ${selectedSemester.name}...');

    final attendance = await fetchAttendance(
      client: client,
      semesterId: selectedSemester.id,
    );

    print('✓ Found ${attendance.length} courses:');
    print('\n=== ATTENDANCE JSON ===');
    final attendanceJson = attendance.map((record) => record.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(attendanceJson));
    print('');
  } catch (e) {
    print('Error fetching attendance: $e\n');
  }
}

Future<void> fetchAndDisplayTimetable(VtopClient client) async {
  try {
    final semesters = await fetchSemesters(client: client);

    if (semesters.semesters.isEmpty) {
      print('No semesters found.');
      return;
    }

    print('Available semesters:');
    for (int i = 0; i < semesters.semesters.length; i++) {
      print('${i + 1}. ${semesters.semesters[i].name}');
    }

    stdout.write('Select semester (1-${semesters.semesters.length}): ');
    final choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (choice < 1 || choice > semesters.semesters.length) {
      print('Invalid choice.\n');
      return;
    }

    final selectedSemester = semesters.semesters[choice - 1];
    print('Fetching timetable for ${selectedSemester.name}...');

    final timetable = await fetchTimetable(
      client: client,
      semesterId: selectedSemester.id,
    );

    print('✓ Found ${timetable.length} timetable slots:');
    print('\n=== TIMETABLE JSON ===');
    final timetableJson = timetable.map((slot) => slot.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(timetableJson));
    print('');
  } catch (e) {
    print('Error fetching timetable: $e\n');
  }
}

Future<void> fetchAndDisplayMarks(VtopClient client) async {
  try {
    final semesters = await fetchSemesters(client: client);

    if (semesters.semesters.isEmpty) {
      print('No semesters found.');
      return;
    }

    print('Available semesters:');
    for (int i = 0; i < semesters.semesters.length; i++) {
      print('${i + 1}. ${semesters.semesters[i].name}');
    }

    stdout.write('Select semester (1-${semesters.semesters.length}): ');
    final choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (choice < 1 || choice > semesters.semesters.length) {
      print('Invalid choice.\n');
      return;
    }

    final selectedSemester = semesters.semesters[choice - 1];
    print('Fetching marks for ${selectedSemester.name}...');

    final marks = await fetchMarks(
      client: client,
      semesterId: selectedSemester.id,
    );

    print('✓ Found ${marks.length} courses with marks:');
    print('\n=== MARKS JSON ===');
    final marksJson = marks.map((record) => record.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(marksJson));
    print('');
  } catch (e) {
    print('Error fetching marks: $e\n');
  }
}

Future<void> fetchAndDisplayExamSchedule(VtopClient client) async {
  try {
    final semesters = await fetchSemesters(client: client);

    if (semesters.semesters.isEmpty) {
      print('No semesters found.');
      return;
    }

    print('Available semesters:');
    for (int i = 0; i < semesters.semesters.length; i++) {
      print('${i + 1}. ${semesters.semesters[i].name}');
    }

    stdout.write('Select semester (1-${semesters.semesters.length}): ');
    final choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (choice < 1 || choice > semesters.semesters.length) {
      print('Invalid choice.\n');
      return;
    }

    final selectedSemester = semesters.semesters[choice - 1];
    print('Fetching exam schedule for ${selectedSemester.name}...');

    final examSchedule = await fetchExamShedule(
      client: client,
      semesterId: selectedSemester.id,
    );

    print('✓ Found ${examSchedule.length} exam schedules:');
    print('\n=== EXAM SCHEDULE JSON ===');
    final examScheduleJson =
        examSchedule.map((schedule) => schedule.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(examScheduleJson));
    print('');
  } catch (e) {
    print('Error fetching exam schedule: $e\n');
  }
}
