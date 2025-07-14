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
      print('6. Fetch Student Profile');
      print('7. Fetch Grade History');
      print('8. Fetch Payment Receipts');
      print('9. Fetch Pending Payments');
      print('10. Fetch Biometric Data');
      print('11. Faculty Search');
      print('12. Hostel Reports');
      print('13. WiFi Login/Logout');
      print('14. Test Rust Bridge');
      print('0. Exit');
      stdout.write('\nSelect an option (0-14): ');

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
          await fetchAndDisplayStudentProfile(client);
          break;
        case '7':
          await fetchAndDisplayGradeHistory(client);
          break;
        case '8':
          await fetchAndDisplayPaymentReceipts(client);
          break;
        case '9':
          await fetchAndDisplayPendingPayments(client);
          break;
        case '10':
          await fetchAndDisplayBiometricData(client);
          break;
        case '11':
          await facultySearchAndDisplay(client);
          break;
        case '12':
          await hostelReportsMenu(client);
          break;
        case '13':
          await wifiLoginLogout();
          break;
        case '14':
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

Future<void> fetchAndDisplayStudentProfile(VtopClient client) async {
  try {
    print('Fetching student profile...');
    final profile = await fetchStudentProfile(client: client);

    print('✓ Student profile retrieved successfully:');
    print('\n=== STUDENT PROFILE JSON ===');
    print(const JsonEncoder.withIndent('  ').convert(profile.toJson()));
    print('');
  } catch (e) {
    print('Error fetching student profile: $e\n');
  }
}

Future<void> fetchAndDisplayGradeHistory(VtopClient client) async {
  try {
    print('Fetching grade history...');
    final (gradeHistory, courseHistories) = await fetchGradeHistory(
      client: client,
    );

    print('✓ Grade history retrieved successfully:');
    print('\n=== GRADE HISTORY JSON ===');
    print('Overall Grade History:');
    print(const JsonEncoder.withIndent('  ').convert(gradeHistory.toJson()));
    print('\nCourse-wise Grade History:');
    final courseHistoriesJson =
        courseHistories.map((course) => course.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(courseHistoriesJson));
    print('');
  } catch (e) {
    print('Error fetching grade history: $e\n');
  }
}

Future<void> fetchAndDisplayPaymentReceipts(VtopClient client) async {
  try {
    print('Fetching payment receipts...');
    final receipts = await fetchPaymentReceipts(client: client);

    print('✓ Found ${receipts.length} payment receipts:');
    print('\n=== PAYMENT RECEIPTS JSON ===');
    final receiptsJson = receipts.map((receipt) => receipt.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(receiptsJson));
    print('');
  } catch (e) {
    print('Error fetching payment receipts: $e\n');
  }
}

Future<void> fetchAndDisplayPendingPayments(VtopClient client) async {
  try {
    print('Fetching pending payments...');
    final pendingPayments = await fetchPendingPayments(client: client);

    print('✓ Found ${pendingPayments.length} pending payments:');
    print('\n=== PENDING PAYMENTS JSON ===');
    final pendingPaymentsJson =
        pendingPayments.map((payment) => payment.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(pendingPaymentsJson));
    print('');
  } catch (e) {
    print('Error fetching pending payments: $e\n');
  }
}

Future<void> fetchAndDisplayBiometricData(VtopClient client) async {
  try {
    stdout.write('Enter date (YYYY-MM-DD format): ');
    final date = stdin.readLineSync() ?? '';

    if (date.isEmpty) {
      print('Invalid date format.\n');
      return;
    }

    print('Fetching biometric data for $date...');
    final biometricData = await fetchBiometricData(client: client, date: date);

    print('✓ Found ${biometricData.length} biometric records:');
    print('\n=== BIOMETRIC DATA JSON ===');
    final biometricJson =
        biometricData.map((record) => record.toJson()).toList();
    print(const JsonEncoder.withIndent('  ').convert(biometricJson));
    print('');
  } catch (e) {
    print('Error fetching biometric data: $e\n');
  }
}

Future<void> facultySearchAndDisplay(VtopClient client) async {
  try {
    stdout.write('Enter faculty search term: ');
    final searchTerm = stdin.readLineSync() ?? '';

    if (searchTerm.isEmpty) {
      print('Search term cannot be empty.\n');
      return;
    }

    print('Searching for faculty with term: $searchTerm...');
    final facultyResult = await fetchFacultySearch(
      client: client,
      searchTerm: searchTerm,
    );

    print('✓ Faculty found:');
    print('\n=== FACULTY SEARCH RESULT ===');
    print('Name: ${facultyResult.facultyName}');
    print('Designation: ${facultyResult.designation}');
    print('School/Centre: ${facultyResult.schoolOrCentre}');
    print('Employee ID: ${facultyResult.empId}');

    print(
      '\nWould you like to get detailed information for this faculty? (y/n)',
    );
    final getDetails = stdin.readLineSync()?.toLowerCase() ?? 'n';

    if (getDetails == 'y' || getDetails == 'yes') {
      print(
        'Fetching detailed information for ${facultyResult.facultyName}...',
      );

      final facultyDetails = await fetchFacultyData(
        client: client,
        empId: facultyResult.empId,
      );
      print('\n=== FACULTY DETAILS JSON ===');
      print(
        const JsonEncoder.withIndent('  ').convert(facultyDetails.toJson()),
      );
    }
    print('');
  } catch (e) {
    print('Error with faculty search: $e\n');
  }
}

Future<void> hostelReportsMenu(VtopClient client) async {
  try {
    print('=== Hostel Reports ===');
    print('1. Hostel Outing Report');
    print('2. Hostel Leave Report');
    print('3. Submit Outing Form');
    print('0. Back to main menu');
    stdout.write('Select option (0-3): ');

    final choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        await fetchAndDisplayHostelReport(client);
        break;
      case '2':
        await fetchAndDisplayHostelLeaveReport(client);
        break;
      case '3':
        await submitOutingForm(client);
        break;
      case '0':
        return;
      default:
        print('Invalid option.\n');
    }
  } catch (e) {
    print('Error in hostel reports menu: $e\n');
  }
}

Future<void> fetchAndDisplayHostelReport(VtopClient client) async {
  try {
    print('Fetching hostel outing report...');
    final hostelReport = await fetchHostelReport(client: client);

    print('✓ Hostel outing report retrieved:');
    print('\n=== HOSTEL OUTING REPORT JSON ===');
    print(const JsonEncoder.withIndent('  ').convert(hostelReport.toJson()));
    print('');
  } catch (e) {
    print('Error fetching hostel report: $e\n');
  }
}

Future<void> fetchAndDisplayHostelLeaveReport(VtopClient client) async {
  try {
    print('Fetching hostel leave report...');
    final hostelLeaveReport = await leaveReport(client: client);

    print('✓ Hostel leave report retrieved:');
    print('\n=== HOSTEL LEAVE REPORT JSON ===');
    print(
      const JsonEncoder.withIndent('  ').convert(hostelLeaveReport.toJson()),
    );
    print('');
  } catch (e) {
    print('Error fetching hostel leave report: $e\n');
  }
}

Future<void> submitOutingForm(VtopClient client) async {
  try {
    print('=== Submit Outing Form ===');

    stdout.write('Purpose of visit: ');
    final purpose = stdin.readLineSync() ?? '';

    stdout.write('Outing date (YYYY-MM-DD): ');
    final outingDate = stdin.readLineSync() ?? '';

    stdout.write('Contact number: ');
    final contactNumber = stdin.readLineSync() ?? '';

    stdout.write('Out place: ');
    final outPlace = stdin.readLineSync() ?? '';

    stdout.write('Out time (HH:MM): ');
    final outTime = stdin.readLineSync() ?? '';

    if (purpose.isEmpty ||
        outingDate.isEmpty ||
        contactNumber.isEmpty ||
        outPlace.isEmpty ||
        outTime.isEmpty) {
      print('All fields are required.\n');
      return;
    }

    print('Submitting outing form...');
    final result = await submitHostelOutingForm(
      client: client,
      purposeOfVisit: purpose,
      outingDate: outingDate,
      contactNumber: contactNumber,
      outPlace: outPlace,
      outTime: outTime,
    );

    print('✓ Outing form submitted successfully:');
    print('Result: $result\n');
  } catch (e) {
    print('Error submitting outing form: $e\n');
  }
}

Future<void> wifiLoginLogout() async {
  try {
    print('=== WiFi Login/Logout ===');
    print('1. Login');
    print('2. Logout');
    stdout.write('Select option (1-2): ');

    final choice = stdin.readLineSync() ?? '';

    if (choice != '1' && choice != '2') {
      print('Invalid option.\n');
      return;
    }

    stdout.write('Enter username: ');
    final username = stdin.readLineSync() ?? '';

    stdout.write('Enter password: ');
    stdin.echoMode = false;
    final password = stdin.readLineSync() ?? '';
    stdin.echoMode = true;
    print('');

    if (username.isEmpty || password.isEmpty) {
      print('Username and password cannot be empty.\n');
      return;
    }

    final operation = choice == '1' ? 'login' : 'logout';
    final operationCode = choice == '1' ? 1 : 0;

    print('Performing WiFi $operation...');
    final (success, message) = await fetchWifi(
      username: username,
      password: password,
      i: operationCode,
    );

    if (success) {
      print('✓ WiFi $operation successful: $message\n');
    } else {
      print('✗ WiFi $operation failed: $message\n');
    }
  } catch (e) {
    print('Error with WiFi operation: $e\n');
  }
}
