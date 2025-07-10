/// A Flutter package that provides Dart bindings for the VTOP (VIT Academic Portal) library.
///
/// This package allows you to interact with the VTOP system for various academic operations
/// including attendance management, timetable access, marks retrieval, and more.
library;

// Core exports
export 'src/rust/frb_generated.dart' show RustLib;

// API exports
export 'src/rust/api/simple.dart';
export 'src/rust/api/vtop_get_client.dart';

// Type exports
export 'src/rust/api/vtop/types.dart';
export 'src/rust/api/vtop/vtop_client.dart';
export 'src/rust/api/vtop/vtop_config.dart';
export 'src/rust/api/vtop/vtop_errors.dart';
export 'src/rust/api/vtop/wifi.dart';
export 'src/rust/api/vtop/session_manager.dart';

// Re-export commonly used types
export 'src/rust/api/vtop/types.dart'
    show
        AttendanceData,
        AttendanceRecord,
        BiometricData,
        BiometricRecord,
        ExamScheduleData,
        FacultyDetails,
        FullAttendanceData,
        GetFaculty,
        MarksData,
        SemesterData,
        TimetableData,
        HostelOutingData,
        HostelLeaveData;

export 'src/rust/api/vtop/vtop_client.dart' show VtopClient;
export 'src/rust/api/vtop/vtop_errors.dart' show VtopError;
