use crate::api::vtop::{
    types::{
        AttendanceData, BiometricData, ExamScheduleData, FacultyDetails, FullAttendanceData,
        GetFaculty, HostelLeaveData, HostelOutingData, MarksData, SemesterData, TimetableData,
    },
    vtop_client::{VtopClient, VtopError},
    vtop_config::VtopClientBuilder,
    wifi::*,
};

#[flutter_rust_bridge::frb(sync)]
pub fn get_vtop_client(username: String, password: String) -> VtopClient {
    VtopClientBuilder::new().build(username, password)
}

#[flutter_rust_bridge::frb()]
pub async fn vtop_client_login(client: &mut VtopClient) -> Result<(), VtopError> {
    client.login().await
}
#[flutter_rust_bridge::frb()]
pub async fn fetch_semesters(client: &mut VtopClient) -> Result<SemesterData, VtopError> {
    client.get_semesters().await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_attendance(
    client: &mut VtopClient,
    semester_id: String,
) -> Result<AttendanceData, VtopError> {
    client.get_attendance(&semester_id).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_full_attendance(
    client: &mut VtopClient,
    semester_id: String,
    course_id: String,
    course_type: String,
) -> Result<FullAttendanceData, VtopError> {
    client
        .get_full_attendance(&semester_id, &course_id, &course_type)
        .await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_timetable(
    client: &mut VtopClient,
    semester_id: String,
) -> Result<TimetableData, VtopError> {
    client.get_timetable(&semester_id).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_marks(
    client: &mut VtopClient,
    semester_id: String,
) -> Result<MarksData, VtopError> {
    client.get_marks(&semester_id).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_exam_shedule(
    client: &mut VtopClient,
    semester_id: String,
) -> Result<ExamScheduleData, VtopError> {
    client.get_exam_schedule(&semester_id).await
}

#[flutter_rust_bridge::frb()]
#[cfg(not(target_arch = "wasm32"))]
pub async fn fetch_cookies(client: &mut VtopClient) -> Result<Vec<u8>, VtopError> {
    client.get_cookie().await.clone()
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_is_auth(client: &mut VtopClient) -> bool {
    client.is_authenticated().clone()
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_wifi(username: String, password: String, i: i32) -> (bool, String) {
    wifi_login_logout(i, username, password).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_biometric_data(
    client: &mut VtopClient,
    date: String,
) -> Result<BiometricData, VtopError> {
    client.get_biometric_data(date).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_faculty_search(
    client: &mut VtopClient,
    search_term: String,
) -> Result<GetFaculty, VtopError> {
    client.get_faculty_search(search_term).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_faculty_data(
    client: &mut VtopClient,
    emp_id: String,
) -> Result<FacultyDetails, VtopError> {
    client.get_faculty_data(emp_id).await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_hostel_report(client: &mut VtopClient) -> Result<HostelOutingData, VtopError> {
    client.get_hostel_report().await
}

#[flutter_rust_bridge::frb()]
pub async fn fetch_hostel_outing(
    client: &mut VtopClient,
    booking_id: String,
) -> Result<Vec<u8>, VtopError> {
    client.get_hostel_outing_pdf(booking_id).await
}

#[flutter_rust_bridge::frb()]
pub async fn submit_hostel_outing_form(
    client: &mut VtopClient,
    purpose_of_visit: String,
    outing_date: String,
    contact_number: String,
    out_place: String,
    out_time: String,
) -> Result<String, VtopError> {
    client
        .submit_outing_form(
            purpose_of_visit,
            outing_date,
            contact_number,
            out_place,
            out_time,
        )
        .await
}

#[flutter_rust_bridge::frb()]
pub async fn leave_report(client: &mut VtopClient) -> Result<HostelLeaveData, VtopError> {
    client.get_hostel_leave_report().await
}

#[flutter_rust_bridge::frb()]
pub async fn leave_report_download(
    client: &mut VtopClient,
    leave_id: String,
) -> Result<Vec<u8>, VtopError> {
    client.get_hostel_leave_pdf(leave_id).await
}
