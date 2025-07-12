use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};

/// AttendanceRecord -> This is a basic single attendance data row that you see in attendance page
/// AttendanceData -> This is a list of AttendanceRecord(s)
/// AttendanceDetailRecord -> This is the more detailed attendance data that you see when the eye icon is pressed
/// AttendanceDetail -> This is a list of AttendanceDetailRecord(s)

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

// #[derive(Debug, Clone, Serialize, Deserialize)]
// #[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
// #[frb]
// pub struct AttendanceData {
//     pub records: Vec<AttendanceRecord>,
//     pub semester_id: String,
//     pub update_time: u64,
// }

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb]
pub struct AttendanceDetailRecord {
    pub serial: String,
    pub date: String,
    pub slot: String,
    pub day_time: String,
    pub status: String,
    pub remark: String,
}

// #[derive(Debug, Clone, Serialize, Deserialize)]
// #[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
// #[frb]
// pub struct AttendanceDetail {
//     pub records: Vec<AttendanceDetailRecord>,
//     pub semester_id: String,
//     pub update_time: u64,
//     pub course_id: String,
//     pub course_type: String,
// }
