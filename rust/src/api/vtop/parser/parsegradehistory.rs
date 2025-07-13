use crate::api::vtop::types::profile::{GradeCourseHistory, GradeHistory};
use scraper::{Html, Selector};

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
pub fn parse_grade_history(html: String) -> (GradeHistory, Vec<GradeCourseHistory>) {
    let doc = Html::parse_document(&html);

    // Parse CGPA summary table (Credits Registered, Credits Earned, CGPA)
    let mut credits_registered = String::from("N/A");
    let mut credits_earned = String::from("N/A");
    let mut cgpa = String::from("N/A");

    let cgpa_table_selector = Selector::parse("table.table.table-hover.table-bordered").unwrap();
    if let Some(table) = doc.select(&cgpa_table_selector).find(|t| t.html().contains("CGPA")) {
        let row_selector = Selector::parse("tbody tr").unwrap();
        if let Some(row) = table.select(&row_selector).next() {
            let tds: Vec<_> = row.select(&Selector::parse("td").unwrap()).collect();
            if tds.len() >= 3 {
                credits_registered = tds[0].text().collect::<String>().trim().to_string();
                credits_earned = tds[1].text().collect::<String>().trim().to_string();
                cgpa = tds[2].text().collect::<String>().trim().to_string();
            }
        }
    }

    let grade_history = GradeHistory {
        credits_registered,
        credits_earned,
        cgpa,
    };

    // Parse all course grade rows
    let mut courses = Vec::new();
    let course_table_selector = Selector::parse("table.customTable").unwrap();
    for table in doc.select(&course_table_selector) {
        // Only process tables with "Course Code" header
        if !table.html().contains("Course Code") {
            continue;
        }
        let row_selector = Selector::parse("tr.tableContent").unwrap();
        for row in table.select(&row_selector) {
            let tds: Vec<_> = row.select(&Selector::parse("td").unwrap()).collect();
            if tds.len() >= 10 {
                let course_code = tds[1].text().collect::<String>().trim().to_string();
                // Skip header rows or rows with empty course code
                if course_code == "Course Code" || course_code.is_empty() {
                    continue;
                }
                let course_title = tds[2].text().collect::<String>().trim().to_string();
                let course_type = tds[3].text().collect::<String>().trim().to_string();
                let credits = tds[4].text().collect::<String>().trim().to_string();
                let grade = tds[5].text().collect::<String>().trim().to_string();
                let exam_month = tds[6].text().collect::<String>().trim().to_string();
                let course_distribution = tds[8].text().collect::<String>().trim().to_string();

                courses.push(GradeCourseHistory {
                    course_code,
                    course_title,
                    course_type,
                    credits,
                    grade,
                    exam_month,
                    course_distribution,
                });
            }
        }
    }

    (grade_history, courses)
}
