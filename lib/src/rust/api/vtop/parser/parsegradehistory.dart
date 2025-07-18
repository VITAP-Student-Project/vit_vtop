// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.11.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import '../types/grade_course_history.dart';
import '../types/grade_history.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:meta/meta.dart' as meta;

/// Parses an HTML string containing a student's grade history and extracts summary and course details.
///
/// Returns a tuple with a `GradeHistory` struct summarizing credits registered, credits earned, and CGPA, and a vector of `GradeCourseHistory` structs for each course entry found in the HTML.
///
/// # Examples
///
/// ```
/// let html = std::fs::read_to_string("tests/data/grade_history.html").unwrap();
/// let (summary, courses) = parse_grade_history(html);
/// assert!(!summary.cgpa.is_empty());
/// assert!(!courses.is_empty());
/// ```
Future<(GradeHistory, List<GradeCourseHistory>)> parseGradeHistory({
  required String html,
}) => RustLib.instance.api.crateApiVtopParserParsegradehistoryParseGradeHistory(
  html: html,
);
