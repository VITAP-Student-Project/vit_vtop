use flutter_rust_bridge::frb;
use serde::{de, Deserialize, Serialize};
#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct FullAttendanceRecord {
    pub serial: String,
    pub date: String,
    pub slot: String,
    pub day_time: String,
    pub status: String,
    pub remark: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct FullAttendanceData {
    pub records: Vec<FullAttendanceRecord>,
    pub semester_id: String,
    pub update_time: u64,
    pub course_id: String,
    pub course_type: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct AttendanceRecord {
    pub serial: String,
    pub category: String,
    pub course_name: String,
    pub course_code: String,
    pub course_type: String,
    pub faculty_detail: String,
    pub classes_attended: String,
    pub total_classes: String,
    pub attendance_percentage: String,
    pub attendence_fat_cat: String,
    pub debar_status: String,
    pub course_id: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct AttendanceData {
    pub records: Vec<AttendanceRecord>,
    pub semester_id: String,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct TimetableSlot {
    pub serial: String,
    pub day: String,
    pub slot: String,
    pub course_code: String,
    pub course_type: String,
    pub room_no: String,
    pub block: String,
    pub start_time: String,
    pub end_time: String,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct TimetableData {
    pub slots: Vec<TimetableSlot>,
    pub semester_id: String,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct MarksRecord {
    pub serial: String,
    pub coursecode: String,
    pub coursetitle: String,
    pub coursetype: String,
    pub faculity: String,
    pub slot: String,
    pub marks: Vec<MarksRecordEach>,
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
#[frb(json_serializable)]
pub struct MarksRecordEach {
    pub serial: String,
    pub markstitle: String,
    pub maxmarks: String,
    pub weightage: String,
    pub status: String,
    pub scoredmark: String,
    pub weightagemark: String,
    pub remark: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct MarksData {
    pub records: Vec<MarksRecord>,
    pub semester_id: String,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct ExamScheduleRecord {
    pub serial: String,
    pub slot: String,
    pub course_name: String,
    pub course_code: String,
    pub course_type: String,
    pub course_id: String,
    pub exam_date: String,
    pub exam_session: String,
    pub reporting_time: String,
    pub exam_time: String,
    pub venue: String,
    pub seat_location: String,
    pub seat_no: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct PerExamScheduleRecord {
    pub records: Vec<ExamScheduleRecord>,
    pub exam_type: String,
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct ExamScheduleData {
    pub exams: Vec<PerExamScheduleRecord>,
    pub semester_id: String,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct SemesterInfo {
    pub id: String,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct SemesterData {
    pub semesters: Vec<SemesterInfo>,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct BiometricRecord {
    pub serial: String,
    pub date: String,
    pub day: String,
    pub in_time: String,
    pub out_time: String,
    pub duration: String,
    pub location: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct BiometricData {
    pub records: Vec<BiometricRecord>,
    pub from_date: String,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct GetFaculty {
    pub faculty_name: String,
    pub designation: String,
    pub school_or_centre: String,
    pub emp_id: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct FacultyDetails {
    pub name: String,
    pub designation: String,
    pub department: String,
    pub school_centre: String,
    pub email: String,
    pub cabin_number: String,
    pub office_hours: Vec<OfficeHour>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct OfficeHour {
    pub day: String,
    pub timings: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct OutingRecord {
    pub serial: String,
    pub registration_number: String,
    pub hostel_block: String,
    pub room_number: String,
    pub place_of_visit: String,
    pub purpose_of_visit: String,
    pub time: String,
    pub contact_number: String,
    pub parent_contact_number: String,
    pub date: String,
    pub booking_id: String,
    pub status: String,
    pub can_download: bool,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct HostelOutingData {
    pub records: Vec<OutingRecord>,
    pub update_time: u64,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct OutingFormData {
    pub purpose_of_visit: String,
    pub outing_date: String,
    pub contact_number: String,
    pub out_place: String,
    pub out_time: String,
    pub parent_contact_number: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct LeaveRecord {
    pub serial: String,
    pub registration_number: String,
    pub place_of_visit: String,
    pub purpose_of_visit: String,
    pub from_date: String,
    pub from_time: String,
    pub to_date: String,
    pub to_time: String,
    pub status: String,
    pub can_download: bool,
    pub leave_id: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct HostelLeaveData {
    pub records: Vec<LeaveRecord>,
    pub update_time: u64,
}