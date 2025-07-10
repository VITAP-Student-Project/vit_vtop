use scraper::{Html, Selector};
use std::time::{Duration, SystemTime, UNIX_EPOCH};

use super::super::types::*;

pub fn parse_biometric_data(html: String, from_date: String) -> BiometricData {
    let document = Html::parse_document(&html);
    let rows_selector = Selector::parse("tr").unwrap();
    let mut records: Vec<BiometricRecord> = Vec::new();
    
    // Skip the header row (first row)
    for row in document.select(&rows_selector).skip(1) {
        let cells: Vec<_> = row.select(&Selector::parse("td").unwrap()).collect();
        if cells.len() >= 4 {  // We need at least 4 columns for the new format
            let record = BiometricRecord {
                serial: cells[0]
                    .text()
                    .collect::<Vec<_>>()
                    .join("")
                    .trim()
                    .replace("\t", "")
                    .replace("\n", ""),
                date: cells[1]
                    .text()
                    .collect::<Vec<_>>()
                    .join("")
                    .trim()
                    .replace("\t", "")
                    .replace("\n", ""),
                in_time: cells[2]
                    .text()
                    .collect::<Vec<_>>()
                    .join("")
                    .trim()
                    .replace("\t", "")
                    .replace("\n", ""),
                location: cells[3]
                    .text()
                    .collect::<Vec<_>>()
                    .join("")
                    .trim()
                    .replace("\t", "")
                    .replace("\n", ""),
                day: String::new(),
                out_time: String::new(),
                duration: String::new(),
            };
            
            records.push(record);
        }
    }
    
    BiometricData {
        records,
        from_date,
        update_time: SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .unwrap_or(Duration::new(1, 0))
            .as_secs(),
    }
}
        