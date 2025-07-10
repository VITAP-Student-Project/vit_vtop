# VIT_VTOP

A Flutter package that provides Dart bindings for the VTOP (VIT Academic Portal) library using flutter_rust_bridge.

## Features

This package allows Flutter applications to interact with the VTOP system for various academic operations:

- **Authentication**: Login and session management
- **Academic Data**: Fetch semesters, attendance, marks, timetables, and exam schedules
- **Biometric Data**: Access biometric attendance records
- **Faculty Information**: Search and retrieve faculty details
- **Hostel Services**: Manage hostel outings and leave applications
- **WiFi Management**: Login/logout from campus WiFi

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  vit_vtop: ^0.0.1
    git:
      url:https://github.com/VITAP-Student-Project/vit_vtop.git
```

Then run:

```bash
flutter pub get
```

## Usage

### Basic Setup

```dart
import 'package:vit_vtop/vit_vtop.dart';

void main() async {
  // Initialize the Rust library
  await RustLib.init();
  
  // Your app code here
  runApp(MyApp());
}
```

### Authentication

```dart
// Create a VTOP client
final client = getVtopClient(
  username: 'your_username',
  password: 'your_password',
);

// Login to VTOP
try {
  await vtopClientLogin(client: client);
  print('Login successful!');
  
  // Check authentication status
  final isAuthenticated = await fetchIsAuth(client: client);
  print('Authenticated: $isAuthenticated');
} catch (e) {
  print('Login failed: $e');
}
```

### Fetching Academic Data

```dart
// Get available semesters
final semesters = await fetchSemesters(client: client);
print('Found ${semesters.semesters.length} semesters');

// Use the current semester
final semesterId = semesters.semesters.first.id;

// Get attendance data
final attendance = await fetchAttendance(
  client: client,
  semesterId: semesterId,
);

for (final record in attendance.records) {
  print('${record.courseName}: ${record.attendancePercentage}%');
}

// Get timetable
final timetable = await fetchTimetable(
  client: client,
  semesterId: semesterId,
);

// Get marks/grades
final marks = await fetchMarks(
  client: client,
  semesterId: semesterId,
);

// Get exam schedule
final examSchedule = await fetchExamShedule(
  client: client,
  semesterId: semesterId,
);
```

### Other Features

```dart
// Search for faculty
final faculty = await fetchFacultySearch(
  client: client,
  searchTerm: 'computer science',
);

// Get biometric data for a specific date
final biometricData = await fetchBiometricData(
  client: client,
  date: '2024-01-15',
);

// WiFi operations
final wifiResult = await fetchWifi(
  username: 'your_username',
  password: 'your_password',
  i: 1, // 1 for login, 0 for logout
);

// Hostel operations (if applicable)
final hostelReport = await fetchHostelReport(client: client);
```

## Data Models

The package provides several data models for working with VTOP data:

### AttendanceRecord
```dart
class AttendanceRecord {
  final String courseName;
  final String courseCode;
  final String attendancePercentage;
  final String classesAttended;
  final String totalClasses;
  // ... other properties
}
```

### SemesterInfo
```dart
class SemesterInfo {
  final String id;
  final String name;
}
```

### TimetableSlot
```dart
class TimetableSlot {
  final String day;
  final String slot;
  final String courseCode;
  final String roomNo;
  final String startTime;
  final String endTime;
  // ... other properties
}
```

### MarksRecord
```dart
class MarksRecord {
  final String coursecode;
  final String coursetitle;
  final List<MarksRecordEach> marks;
  // ... other properties
}
```

## Error Handling

The package uses Rust's error handling, which is exposed as Dart exceptions:

```dart
try {
  await vtopClientLogin(client: client);
} on VtopError catch (e) {
  // Handle VTOP-specific errors
  print('VTOP Error: $e');
} catch (e) {
  // Handle other errors
  print('General Error: $e');
}
```

## Example App

Check out the `example/` directory for a complete Flutter app demonstrating all features:

```bash
cd example
flutter run
```

## Requirements

- Flutter SDK: >=3.7.2
- Dart SDK: >=3.7.2
- Valid VTOP credentials (VIT student/faculty account)

## Platform Support

- ✅ Android
- ✅ iOS
- ✅ Windows
- ✅ macOS
- ✅ Linux
- ✅ Web (with limitations)

## Security Notes

- **Never commit credentials**: Always use environment variables or secure storage for credentials
- **Session management**: The package handles session cookies automatically
- **Network security**: All communications use HTTPS

## Development

### Building from Source

```bash
# Clone the repository
git clone <repository-url>
cd vit_vtop

# Get dependencies
flutter pub get

# Generate bindings (if needed)
flutter_rust_bridge_codegen generate

# Run tests
flutter test
```

### Generating Bindings

If you modify the Rust code, regenerate the bindings:

```bash
flutter_rust_bridge_codegen generate --watch
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built with [flutter_rust_bridge](https://pub.dev/packages/flutter_rust_bridge)
- VTOP system by VIT University
- Rust backend library by VITAP Student Project

## Support

For issues and questions:

1. Check the [documentation](https://docs.rs/lib_vtop)
2. Search existing [issues](https://github.com/VITAP-Student-Project/lib_vtop/issues)
3. Create a new issue if needed

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history and updates.
