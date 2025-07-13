use crate::api::vtop::types::payments::PaymentReceipt;
use scraper::{Html, Selector};

pub fn parse_payment_receipts(html: String) -> Vec<PaymentReceipt> {
    let doc = Html::parse_document(&html);
    let mut results = Vec::new();

    // Find the main receipts table
    let table_selector = Selector::parse("table.table.table-bordered").unwrap();
    if let Some(table) = doc.select(&table_selector).next() {
        let row_selector = Selector::parse("tr").unwrap();
        for row in table.select(&row_selector).skip(1) { // skip header
            let tds: Vec<_> = row.select(&Selector::parse("td").unwrap()).collect();
            if tds.len() >= 5 {
                let receipt_number = tds[0].text().collect::<String>().trim().to_string();
                let date = tds[1].text().collect::<String>().trim().to_string();
                let amount = tds[2].text().collect::<String>().trim().to_string();
                let campus_code = tds[3].text().collect::<String>().trim().to_string();

                // Extract receipt_no from button's onclick
                let mut receipt_no = String::new();
                if let Some(button) = tds[4].select(&Selector::parse("button").unwrap()).next() {
                    if let Some(onclick) = button.value().attr("onclick") {
                        // Example: javascript:doDuplicateReceipt('27640/26/AMR');
                        let prefix = "doDuplicateReceipt('";
                        let suffix = "')";
                        if let Some(start) = onclick.find(prefix) {
                            let rest = &onclick[start + prefix.len()..];
                            if let Some(end) = rest.find(suffix) {
                                receipt_no = rest[..end].to_string();
                            }
                        }
                    }
                }

                results.push(PaymentReceipt {
                    receipt_number,
                    date,
                    amount,
                    campus_code,
                    payment_status: "Paid".to_string(),
                    receipt_no,
                });
            }
        }
    }

    results
}
