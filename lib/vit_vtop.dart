/// A Dart package that provides Dart bindings for the VTOP (VIT Academic Portal) library.
///
/// This package allows you to interact with the VTOP system for various academic operations
/// including attendance management, timetable access, marks retrieval, and more.
library;

// Core exports
export 'src/rust/frb_generated.dart' show RustLib;

// API exports
export 'src/rust/api/simple.dart';
export 'src/rust/api/vtop_get_client.dart';

// VTOP client and configuration exports
export 'src/rust/api/vtop/vtop_client.dart' show VtopClient;
export 'src/rust/api/vtop/vtop_config.dart' show VtopConfig;
export 'src/rust/api/vtop/vtop_errors.dart' show VtopError;
export 'src/rust/api/vtop/wifi.dart';
export 'src/rust/api/vtop/session_manager.dart' show SessionManager;

// Type exports
export 'src/rust/api/vtop/types/attendance.dart'
    show AttendanceRecord, AttendanceDetailRecord;
export 'src/rust/api/vtop/types/biometric.dart' show BiometricRecord;
export 'src/rust/api/vtop/types/exam_schedule.dart'
    show ExamScheduleRecord, PerExamScheduleRecord;
export 'src/rust/api/vtop/types/faculty.dart'
    show FacultyDetails, GetFaculty, OfficeHour;
export 'src/rust/api/vtop/types/grade_course_history.dart'
    show GradeCourseHistory;
export 'src/rust/api/vtop/types/grade_history.dart' show GradeHistory;
export 'src/rust/api/vtop/types/hostel.dart'
    show HostelOutingData, HostelLeaveData, OutingRecord, LeaveRecord;
export 'src/rust/api/vtop/types/marks.dart' show MarksRecord, MarksRecordEach;
export 'src/rust/api/vtop/types/mentor_details.dart' show MentorDetails;
export 'src/rust/api/vtop/types/paid_payment_receipt.dart'
    show PaidPaymentReceipt;
export 'src/rust/api/vtop/types/pending_payment_receipt.dart'
    show PendingPaymentReceipt;
export 'src/rust/api/vtop/types/semester.dart' show SemesterData, SemesterInfo;
export 'src/rust/api/vtop/types/student_profile.dart' show StudentProfile;
export 'src/rust/api/vtop/types/timetable.dart' show TimetableSlot;
