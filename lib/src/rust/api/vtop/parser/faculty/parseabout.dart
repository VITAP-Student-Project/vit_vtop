// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.11.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../../frb_generated.dart';
import '../../types/faculty.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:meta/meta.dart' as meta;

Future<FacultyDetails> parseFacultyData({required String html}) => RustLib
    .instance
    .api
    .crateApiVtopParserFacultyParseaboutParseFacultyData(html: html);
