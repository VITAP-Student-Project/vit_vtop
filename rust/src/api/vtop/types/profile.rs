use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb(json_serializable)]
#[frb]
pub struct MentorDetails {
    pub faculty_id: String,
    pub faculty_name: String,
    pub faculty_designation: String,
    pub school: String,
    pub cabin: String,
    pub faculty_department: String,
    pub faculty_email: String,
    pub faculty_intercom: String,
    pub faculty_mobile_number: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb(json_serializable)]
#[frb]
pub struct StudentProfileAllView {
    pub application_number: String,
    pub student_name: String,
    pub dob: String,
    pub gender: String,
    pub blood_group: String,
    pub email: String,
    pub base64_pfp: String,
    pub grade_history: GradeHistory,
    pub mentor_details: MentorDetails,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb(json_serializable)]
#[frb]
pub struct GradeHistory {
    pub credits_registered: String,
    pub credits_earned: String,
    pub cgpa: String,
    // pub courses_history: ,
}


#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]
#[frb(json_serializable)]
#[frb]
pub struct GradeCourseHistory {
    pub course_code: String,
    pub course_title: String,
    pub course_type: String,
    pub credits: String,
    pub grade: String,
    pub exam_month: String,
    pub course_distribution: String,
}