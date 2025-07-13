# Contributing to VIT VTOP Package

First off, thank you for considering contributing to the VIT VTOP Package! Your help is essential for keeping it great and improving the academic experience for VIT students.

This document provides guidelines for contributing to this project. Please read it carefully to ensure a smooth and effective contribution process.

## Table of Contents
- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Enhancements](#suggesting-enhancements)
  - [Pull Requests](#pull-requests)
- [Development Setup](#development-setup)
- [Coding Guidelines](#coding-guidelines)
  - [Dart Style Guide](#dart-style-guide)
  - [Rust Style Guide](#rust-style-guide)
  - [Commit Messages](#commit-messages)
- [Testing](#testing)
- [Documentation](#documentation)
- [Community](#community)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

**Our Pledge**: We are committed to making participation in this project a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity and expression, level of experience, nationality, personal appearance, race, religion, or sexual identity and orientation.

## How Can I Contribute?

### Reporting Bugs

If you find a bug, please ensure it was not already reported by searching on GitHub under [Issues](https://github.com/VITAP-Student-Project/vit_vtop/issues).

If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/VITAP-Student-Project/vit_vtop/issues/new). Be sure to include a **title and clear description**, as much relevant information as possible, and a **code sample or steps to reproduce** demonstrating the expected behavior that is not occurring.

**Please include the following information:**
- Your operating system (Windows, macOS, Linux)
- Flutter and Dart SDK versions (`flutter --version`)
- Package version you're using
- Rust toolchain version (`rustc --version`)
- Any details about your setup that might be helpful in troubleshooting
- Detailed steps to reproduce the bug
- Expected vs actual behavior
- Error messages and stack traces
- Screenshots or recordings if applicable

**Bug Report Template:**
```markdown
**Bug Description**
A clear and concise description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Expected Behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Environment**
- OS: [e.g. macOS 12.0]
- Flutter Version: [e.g. 3.7.2]
- Package Version: [e.g. 0.0.1]
- Rust Version: [e.g. 1.70.0]

**Additional Context**
Add any other context about the problem here.
```

### Suggesting Enhancements

If you have an idea for an enhancement, please first discuss the change you wish to make via a GitHub issue before making a change.

**Enhancement Request Template:**
```markdown
**Feature Description**
A clear and concise description of the feature you'd like to see.

**Problem Statement**
What problem does this feature solve? Why is it needed?

**Proposed Solution**
Describe the solution you'd like to see implemented.

**Alternatives Considered**
A clear description of any alternative solutions you've considered.

**Additional Context**
Add any other context, mockups, or screenshots about the feature request.

**Implementation Details**
If you have ideas about how this could be implemented, please share them.
```

### Pull Requests

Pull Requests (PRs) are the primary way to contribute code to this project.

#### PR Process

1. **Fork the repository**: 
   Click the "Fork" button at the top right of the [repository page](https://github.com/VITAP-Student-Project/vit_vtop).

2. **Clone your fork**: 
   ```bash
   git clone https://github.com/your-username/vit_vtop.git
   cd vit_vtop
   ```

3. **Create a new branch**: 
   ```bash
   # For new features
   git checkout -b feature/your-feature-name
   # For bug fixes
   git checkout -b bugfix/issue-number-description
   # For documentation
   git checkout -b docs/improvement-description
   # For performance improvements
   git checkout -b perf/optimization-description
   ```

4. **Set up your development environment**: Follow the [Development Setup](#development-setup) instructions.
5. **Make your changes**: Implement your feature or bug fix.
6. **Follow Coding Guidelines**: Ensure your code adheres to the [Coding Guidelines](#coding-guidelines).
7. **Add tests**: Write unit tests for your changes.
8. **Update documentation**: Update relevant documentation.
9. **Commit your changes**: Use clear and descriptive [Commit Messages](#commit-messages).
10. **Push to your fork**: `git push origin feature/your-feature-name`.
11. **Open a Pull Request**: Go to the original repository and open a PR from your forked branch to the `main` branch.

#### PR Requirements

Your PR should include:
- Clear title and description
- Link to any relevant issues (`Fixes #123`)
- Screenshots for UI changes
- Updated documentation if necessary
- Passing tests and linting checks
- Changelog entry if applicable

**PR Template:**
```markdown
## Description
Brief description of changes made.

## Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Performance improvement
- [ ] Code refactoring

## Related Issues
Fixes #(issue number)

## Testing
- [ ] Unit tests pass locally
- [ ] Integration tests pass locally
- [ ] Manual testing completed

## Screenshots (if applicable)
Add screenshots here

## Checklist
- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my own code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes
```

## Development Setup

### Prerequisites

**Required:**
- Flutter SDK 3.30.0+ ([Installation Guide](https://docs.flutter.dev/get-started/install))
- Rust toolchain 1.70+ ([Installation Guide](https://rustup.rs/))
- Git


### Environment Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/vit_vtop.git
   cd vit_vtop
   ```

2. **Verify Flutter installation**:
   ```bash
   flutter doctor
   ```
   Resolve any issues shown by the doctor command.

3. **Verify Rust installation**:
   ```bash
   rustc --version
   cargo --version
   ```

4. **Install dependencies**:
   ```bash
   # Install Dart dependencies
   flutter pub get
   
   # Install Rust dependencies
   cd rust && cargo check
   ```

5. **Generate bindings** (if needed):
   ```bash
   # Install flutter_rust_bridge_codegen if not already installed
   dart pub global activate flutter_rust_bridge_codegen
   
   # Generate bindings
   flutter_rust_bridge_codegen generate
   ```

6. **Run tests**:
   ```bash
   # Run Dart tests
   flutter test
   
   # Run Rust tests
   cd rust && cargo test
   ```

7. **Run the terminal application**:
   ```bash
   dart run
   ```

### Development Workflow

1. **Make changes** to Dart or Rust code
2. **Regenerate bindings** if Rust interfaces changed:
   ```bash
   flutter_rust_bridge_codegen generate
   ```
3. **Run tests** to ensure nothing breaks
4. **Test manually** using the terminal app or examples
5. **Commit changes** following our commit guidelines

## Coding Guidelines

### Dart Style Guide

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use `dart format` to format your code
- Use `dart analyze` to check for linting issues
- Follow existing project structure and naming conventions

**Code Organization:**
```
lib/
├── src/               # Generated Rust bindings (don't edit manually)
├── main.dart          # Terminal application
└── vit_vtop.dart      # Main library export file
```

**Naming Conventions:**
- Files: `snake_case.dart`
- Classes: `PascalCase`
- Functions/Variables: `camelCase`
- Constants: `kConstantName` or `SCREAMING_SNAKE_CASE`

**Documentation:**
```dart
/// Brief description of the function.
/// 
/// More detailed description if needed.
/// 
/// Example:
/// ```dart
/// final client = getVtopClient(
///   username: 'student',
///   password: 'password',
/// );
/// ```
/// 
/// Throws [Exception] if credentials are invalid.
Future<VtopClient> getVtopClient({
  required String username,
  required String password,
}) async {
  // Implementation
}
```

### Rust Style Guide

- Follow [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
- Use `cargo fmt` to format your code
- Use `cargo clippy` to check for linting issues
- Write comprehensive documentation with examples

**File Organization:**
```
rust/src/
├── lib.rs             # Main library file
├── api/               # API implementations
│   ├── mod.rs
│   ├── simple.rs
│   └── vtop_get_client.rs
└── frb_generated.rs   # Generated code (don't edit)
```

**Documentation:**
```rust
/// Authenticates a user with VTOP and returns a client.
/// 
/// # Arguments
/// 
/// * `username` - The VTOP username
/// * `password` - The VTOP password
/// 
/// # Examples
/// 
/// ```rust
/// let client = get_vtop_client("student".to_string(), "password".to_string())?;
/// ```
/// 
/// # Errors
/// 
/// Returns an error if authentication fails or network issues occur.
pub fn get_vtop_client(username: String, password: String) -> Result<VtopClient> {
    // Implementation
}
```

### Commit Messages

We use [Conventional Commits](https://www.conventionalcommits.org/) for structured commit messages:

**Format:**
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

## Testing

### Unit Tests

**Dart Tests:**
```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test file
flutter test test/vtop_client_test.dart
```

**Rust Tests:**
```bash
cd rust

# Run all tests
cargo test

# Run with output
cargo test -- --nocapture

# Run specific test
cargo test test_vtop_login
```

### Integration Tests

```bash
# Run integration tests
flutter test integration_test/
```

### Test Guidelines

**Dart Testing:**
```dart
import 'package:test/test.dart';
import 'package:vit_vtop/vit_vtop.dart';

void main() {
  group('VtopClient', () {
    test('should create client with valid credentials', () {
      final client = getVtopClient(
        username: 'test_user',
        password: 'test_pass',
      );
      
      expect(client, isNotNull);
      expect(client, isA<VtopClient>());
    });
  });
}
```

**Rust Testing:**
```rust
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_vtop_client_creation() {
        let client = get_vtop_client("test".to_string(), "test".to_string());
        assert!(client.is_ok());
    }
}
```

### Test Coverage

- Aim for **80%+ test coverage**
- All public APIs must have tests
- Critical paths (authentication, data fetching) need comprehensive tests
- Include both positive and negative test cases

## Documentation

### Types of Documentation

1. **Code Documentation**: Inline comments and doc comments
2. **API Documentation**: Public API reference
3. **User Documentation**: README, guides, examples
4. **Developer Documentation**: This file, architecture docs

### Documentation Standards

**Dart Documentation:**
```dart
/// Fetches attendance data for a specific semester.
/// 
/// Returns a list of [AttendanceRecord] objects containing course-wise
/// attendance information.
/// 
/// Example:
/// ```dart
/// final attendance = await fetchAttendance(
///   client: client,
///   semesterId: 'SEM001',
/// );
/// 
/// for (final record in attendance) {
///   print('${record.courseName}: ${record.percentage}%');
/// }
/// ```
/// 
/// Throws [Exception] if the semester is invalid or network issues occur.
Future<List<AttendanceRecord>> fetchAttendance({
  required VtopClient client,
  required String semesterId,
}) async {
  // Implementation
}
```

**README Updates:**
- Keep examples up-to-date
- Add new features to the feature list
- Update installation instructions if needed
- Include screenshots for UI changes

### Generating Documentation

```bash
# Generate Dart documentation
dart doc

# View generated docs
open doc/api/index.html

# Generate Rust documentation
cd rust && cargo doc --open
```

## Community

### Communication Channels

- **GitHub Issues**: Bug reports, feature requests
- **GitHub Discussions**: Questions, ideas, showcases
- **Pull Requests**: Code contributions, reviews

### Getting Help

1. **Search existing issues** and discussions
2. **Check documentation** and examples
3. **Ask in GitHub Discussions** for questions
4. **Open an issue** for bugs or feature requests

### Review Process

1. **Automated checks** must pass (tests, linting)
2. **Maintainer review** for code quality and design
3. **Community feedback** welcome on significant changes
4. **Final approval** from project maintainers

### Recognition

Contributors are recognized in:
- **GitHub contributors** page
- **Changelog** for significant contributions
- **README** acknowledgments section

## Additional Notes

### Project Goals

This project aims to:
- Provide a high-quality Flutter package for VTOP integration
- Maintain excellent performance through Rust backend
- Ensure cross-platform compatibility
- Keep the API simple and intuitive
- Maintain comprehensive documentation

### Development Priorities

1. **Reliability**: Code must be stable and well-tested
2. **Performance**: Leverage Rust for optimal performance
3. **Usability**: Simple, intuitive API design
4. **Documentation**: Comprehensive and up-to-date docs
5. **Community**: Responsive to user needs and feedback

### Best Practices

- **Security first**: Never expose credentials or sensitive data
- **Error handling**: Provide meaningful error messages
- **Backwards compatibility**: Avoid breaking changes when possible
- **Performance**: Consider memory and CPU usage
- **Testing**: Write tests before implementing features (TDD)

### Common Pitfalls

- **Don't edit generated files** in `lib/src/rust/`
- **Always regenerate bindings** after Rust changes
- **Test on multiple platforms** before submitting PR
- **Follow existing patterns** rather than introducing new ones
- **Update documentation** alongside code changes

## Resources

### Learning Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Rust Book](https://doc.rust-lang.org/book/)
- [Flutter Rust Bridge Guide](https://cjycode.com/flutter_rust_bridge/)

### Tools

- [VS Code Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [VS Code Rust Extension](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)
- [Android Studio](https://developer.android.com/studio)
- [Xcode](https://developer.apple.com/xcode/) (macOS only)

Thank you for contributing to making student life at VIT better! 🎓✨

---

**Need help?** Feel free to reach out to the maintainers or open a discussion on GitHub. We're here to help! 🤝
