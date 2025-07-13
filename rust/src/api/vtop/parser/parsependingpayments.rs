use crate::api::vtop::types::payments::PendingPayment;
use scraper::{Html, Selector};

pub fn parse_pending_payments(html: String) -> Vec<PendingPayment> {
    let doc = Html::parse_document(&html);
    let mut results = Vec::new();

    // Find the main table with pending payments
    let table_selector = Selector::parse("table.table.table-bordered.table-responsive.table-hover").unwrap();
    if let Some(table) = doc.select(&table_selector).next() {
        let row_selector = Selector::parse("tr").unwrap();
        for row in table.select(&row_selector).skip(1) { // skip header
            let tds: Vec<_> = row.select(&Selector::parse("td").unwrap()).collect();
            if tds.len() >= 8 {
                let s_no = tds[0].text().collect::<String>().trim().to_string();
                let fprefno = tds[1].text().collect::<String>().trim().to_string();
                let fees_heads = tds[2].text().collect::<String>().trim().to_string();
                let end_date = tds[3].text().collect::<String>().trim().to_string();
                let amount = tds[4].text().collect::<String>().trim().to_string();
                let fine = tds[5].text().collect::<String>().trim().to_string();
                let total_amount = tds[6].text().collect::<String>().trim().to_string();
                // Payment status is always "Unpaid" for pending payments
                results.push(PendingPayment {
                    s_no,
                    fprefno,
                    fees_heads,
                    end_date,
                    amount,
                    fine,
                    total_amount,
                    payment_status: "Unpaid".to_string(),
                });
            }
        }
    }

    results
}
