<br />
<p align="center">
    <img src="https://github.com/VITAP-Student-Project/vitap_student_app/raw/main/public/Final_Icon_512x512.png" width="100" height="100" style="margin-right: 60px;"> 
    <img src="https://github.com/VITAP-Student-Project/vitap_student_app/raw/main/public/vitaplogo.png" width="322" height="100"> 
</p>

##

<br>

<p align="center">
    <a href="https://github.com/VITAP-Student-Project/vit_vtop">
    <img src="https://img.shields.io/github/stars/VITAP-Student-Project/vit_vtop?style=social" alt="GitHub Stars">
    </a>
    <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT">
    </a>
    <a href="https://github.com/VITAP-Student-Project/vit_vtop/issues">
    <img src="https://img.shields.io/github/issues/VITAP-Student-Project/vit_vtop" alt="GitHub Issues">
    </a>
    <a href="https://pub.dev/packages/vit_vtop">
    <img src="https://img.shields.io/pub/v/vit_vtop.svg" alt="Pub Version">
    </a>
    <h1 align="center">VIT VTOP</h1>
    <p align="center">A high-performance Dart package that provides Dart bindings for the lib_vtop rust library. Built with Rust for speed and reliability, designed for Flutter developers who need seamless VTOP integration.
    </p>
</p>
<br>

## 📦 Table of Contents

- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
  - [Basic Setup](#basic-setup)
  - [Authentication](#authentication)
  - [Academic Data](#fetching-academic-data)
  - [Other Features](#other-features)
- [Terminal Application](#-terminal-application)
- [Platform Support](#-platform-support)
- [Error Handling](#-error-handling)
- [Security](#-security)
- [Development](#-development)
- [Contributing](#-contributing)
- [API Reference](#-api-reference)
- [Examples](#-examples)
- [Support](#-support)
- [License](#-license)

## 🚀 Features

This package allows Flutter/Dart applications to interact with the VTOP system for various academic operations:

- **🔐 Authentication**
  - Secure login and session management
  - Automatic session cookie handling
  - Multi-platform credential storage

- **📚 Academic Data**
  - Fetch semesters and course information
  - Real-time attendance tracking
  - Detailed marks and grade reports
  - Interactive timetable management
  - Comprehensive exam schedules

- **🏢 Campus Services**
  - Biometric attendance records
  - Faculty search and information
  - Hostel management services
  - Campus WiFi login/logout

- **⚡ Performance**
  - Built with Rust for maximum performance
  - Memory-efficient operations
  - Cross-platform compatibility
  - Async/await support throughout

## Package Structure

This is a **Dart/Flutter package** that wraps a Rust library providing VTOP functionality. It can be used in:
- Flutter applications (mobile, web, desktop)
- Pure Dart applications (CLI tools, servers)
- As a dependency in other packages

## 💻 Installation

### Prerequisites
- Flutter SDK: >=3.7.2
- Dart SDK: >=3.7.2
- Valid VTOP credentials (VIT student/faculty account)

### Add to Your Project

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  vit_vtop: ^0.0.1
```

Then run:

```bash
flutter pub get
```

### Platform-Specific Setup

#### Android
No additional setup required.

#### iOS
Add to your `ios/Runner/Info.plist`:
```xml
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```

#### Web
Web support is available with some limitations due to CORS policies.

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

for (final record in attendance) {
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

## 🖥️ Terminal Application

The `lib/main.dart` file contains a complete **terminal application** demonstrating the package usage. This interactive CLI tool showcases all the package features.

### Running the Terminal App

1. **Run directly**: 
   ```bash
   dart run
   ```

2. **Compile to executable**: 
   ```bash
   dart compile exe lib/main.dart -o vtop_terminal
   ./vtop_terminal
   ```

3. **With environment variables**:
   ```bash
   # Create .env file
   echo "VTOP_USERNAME=your_username" > .env
   echo "VTOP_PASSWORD=your_password" >> .env
   dart run
   ```

### Terminal App Features
- Interactive menu system
- Credential management (environment variables or manual input)
- JSON output for all API responses
- Error handling demonstrations
- Session management examples

## 🌐 Platform Support

| Platform | Support | Notes |
|----------|---------|-------|
| ✅ Android | Full | Complete native support |
| ✅ iOS | Full | Complete native support |
| ✅ Windows | Full | Complete native support |
| ✅ macOS | Full | Complete native support |
| ✅ Linux | Full | Complete native support |
| ⚠️ Web | Limited | CORS limitations may apply |

## 🛡️ Error Handling

The package uses Rust's error handling, which is exposed as Dart exceptions:

```dart
try {
  await vtopClientLogin(client: client);
} on Exception catch (e) {
  // Handle VTOP-specific errors
  print('VTOP Error: $e');
  
  // Check for specific error types
  if (e.toString().contains('Invalid credentials')) {
    // Handle authentication error
  } else if (e.toString().contains('Network')) {
    // Handle network error
  }
} catch (e) {
  // Handle other errors
  print('General Error: $e');
}
```

## 🔒 Security

- **HTTPS Only**: All communications use HTTPS
- **Session Management**: Automatic cookie handling and session persistence
- **Credential Safety**: Never log or expose passwords
- **Memory Safety**: Rust backend prevents memory-related vulnerabilities
- **Input Validation**: All inputs are validated before processing

### Security Best Practices

```dart
// ❌ Don't do this
const username = 'your_username';
const password = 'your_password';

// ✅ Do this instead
final username = Platform.environment['VTOP_USERNAME'] ?? 
                 await getSecureStorage('username');
final password = Platform.environment['VTOP_PASSWORD'] ??
                 await getSecureStorage('password');
```

## 🛠️ Development

### Building from Source

1. **Fork and clone the repository**:
   ```bash
   git clone https://github.com/your-username/vit_vtop.git
   cd vit_vtop
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Install Rust** (if not already installed):
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   source ~/.cargo/env
   ```

4. **Generate bindings** (if modified):
   ```bash
   flutter_rust_bridge_codegen generate
   ```

5. **Run tests**:
   ```bash
   flutter test
   dart test
   ```

### Project Structure

```
vit_vtop/
├── lib/                    # Dart/Flutter library code
│   ├── src/               # Generated Rust bindings
│   ├── main.dart          # Terminal application
│   └── vit_vtop.dart      # Main library export
├── rust/                  # Rust source code
│   ├── src/               # Rust library implementation
│   └── Cargo.toml         # Rust dependencies
├── example/               # Example Flutter application
├── test/                  # Dart tests
└── rust_builder/          # Build configuration
```

### Generating Bindings

If you modify the Rust code, regenerate the bindings:

```bash
# Watch for changes and auto-generate
flutter_rust_bridge_codegen generate --watch

# Single generation
flutter_rust_bridge_codegen generate
```

### Testing

```bash
# Run Dart tests
flutter test

# Run Rust tests
cd rust && cargo test

# Run integration tests
flutter test integration_test/
```

## 🤝 Contributing

We welcome contributions! This project follows a structured contribution process to maintain code quality and consistency.

### Quick Start for Contributors

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Follow** our [coding guidelines](#coding-guidelines)
4. **Add tests** for your changes
5. **Commit** your changes (`git commit -m 'Add amazing feature'`)
6. **Push** to the branch (`git push origin feature/amazing-feature`)
7. **Open** a Pull Request

### Coding Guidelines

- **Dart**: Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- **Rust**: Follow [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
- **Documentation**: Add documentation for all public APIs
- **Testing**: Maintain test coverage above 80%
- **Commits**: Use [Conventional Commits](https://www.conventionalcommits.org/)

### Types of Contributions

- 🐛 **Bug fixes**
- ✨ **New features**
- 📚 **Documentation improvements**
- 🎨 **Code style improvements**
- ⚡ **Performance optimizations**
- 🧪 **Test improvements**

For detailed contribution guidelines, see [CONTRIBUTING.md](CONTRIBUTING.md).

## 📚 API Reference

### Core Classes

#### `VtopClient`
Main client for VTOP operations.

```dart
final client = getVtopClient(
  username: 'your_username',
  password: 'your_password',
);
```

#### Authentication Methods
- `vtopClientLogin(client: VtopClient)` - Login to VTOP
- `fetchIsAuth(client: VtopClient)` - Check authentication status

#### Academic Data Methods
- `fetchSemesters(client: VtopClient)` - Get available semesters
- `fetchAttendance(client: VtopClient, semesterId: String)` - Get attendance data
- `fetchTimetable(client: VtopClient, semesterId: String)` - Get timetable
- `fetchMarks(client: VtopClient, semesterId: String)` - Get marks/grades
- `fetchExamShedule(client: VtopClient, semesterId: String)` - Get exam schedule

#### Utility Methods
- `fetchFacultySearch(client: VtopClient, searchTerm: String)` - Search faculty
- `fetchBiometricData(client: VtopClient, date: String)` - Get biometric data
- `fetchWifi(username: String, password: String, i: int)` - WiFi operations

For complete API documentation, see our [API Documentation](https://pub.dev/documentation/vit_vtop/).

## 📖 Examples

### Flutter Integration Example

```dart
import 'package:flutter/material.dart';
import 'package:vit_vtop/vit_vtop.dart';

class VtopApp extends StatefulWidget {
  @override
  _VtopAppState createState() => _VtopAppState();
}

class _VtopAppState extends State<VtopApp> {
  late VtopClient client;
  bool isLoading = true;
  List<AttendanceRecord> attendance = [];

  @override
  void initState() {
    super.initState();
    initializeVtop();
  }

  Future<void> initializeVtop() async {
    await RustLib.init();
    
    client = getVtopClient(
      username: 'your_username',
      password: 'your_password',
    );
    
    try {
      await vtopClientLogin(client: client);
      await loadAttendance();
    } catch (e) {
      print('Error: $e');
    }
    
    setState(() => isLoading = false);
  }

  Future<void> loadAttendance() async {
    final semesters = await fetchSemesters(client: client);
    if (semesters.semesters.isNotEmpty) {
      attendance = await fetchAttendance(
        client: client,
        semesterId: semesters.semesters.first.id,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('VTOP Attendance')),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: attendance.length,
                itemBuilder: (context, index) {
                  final record = attendance[index];
                  return ListTile(
                    title: Text(record.courseName),
                    subtitle: Text('${record.attendancePercentage}%'),
                    trailing: Icon(
                      record.attendancePercentage >= 75
                          ? Icons.check_circle
                          : Icons.warning,
                      color: record.attendancePercentage >= 75
                          ? Colors.green
                          : Colors.red,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
```

### CLI Application Example

See `example/terminal_demo.dart` for a complete CLI implementation.

## 💖 Support the Project

If you find this project helpful, consider:

- ⭐ **Starring** the repository
- 🐛 **Reporting bugs** and suggesting features
- 📝 **Contributing** code or documentation
- 💰 **Sponsoring** the project

### Donations (Optional)

- **Buy Me a Coffee**: [Support Project](https://www.buymeacoffee.com/vitapstudent)
- **GitHub Sponsors**: [Sponsor on GitHub](https://github.com/sponsors/VITAP-Student-Project)

## 📞 Support

### Getting Help

1. **Documentation**: Check our comprehensive docs
2. **Examples**: Review the example applications
3. **Issues**: Search [existing issues](https://github.com/VITAP-Student-Project/vit_vtop/issues)
4. **Discussions**: Join [GitHub Discussions](https://github.com/VITAP-Student-Project/vit_vtop/discussions)

### Reporting Issues

When reporting issues, please include:
- Flutter and Dart versions
- Platform (Android/iOS/Web/Desktop)
- Minimal code example
- Error messages and stack traces
- Steps to reproduce

### Performance Metrics

- **Cold start**: < 100ms
- **API response time**: < 1s (network dependent)
- **Memory usage**: < 50MB typical
- **Binary size impact**: ~2MB additional

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2024 VITAP Student Project

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

## 📢 Disclaimer

> **Important**: This package is not an official application from VIT University. It is developed by students for students to provide convenient access to VTOP functionality. Use at your own discretion and ensure compliance with university policies.

## 📧 Contact

**VITAP Student Project Team**
- 📧 Email: [vitapstudent@gmail.com](mailto:vitapstudent@gmail.com)
- 🐙 GitHub: [@VITAP-Student-Project](https://github.com/VITAP-Student-Project)
- 🌐 Website: [Visit our organization](https://vitap.udhay-adithya.me)

## 🔗 Related Projects

- [VITAP Student App](https://github.com/VITAP-Student-Project/vit_ap_student_app) - Complete student mobile app

---

<p align="center">
    <strong>Built with ❤️ by VIT-AP Students for VIT-AP Students</strong>
</p>

<p align="center">
    <strong>Give a ⭐ to support the project!</strong>
</p>
