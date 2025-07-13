use serde::{Serialize, Deserialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct PendingPayment {
    pub s_no: String,
    pub fprefno: String,
    pub fees_heads: String,
    pub end_date: String,
    pub amount: String,
    pub fine: String,
    pub total_amount: String,
    pub payment_status: String, // Always "Unpaid"
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct PaymentReceipt {
    pub receipt_number: String,
    pub date: String,
    pub amount: String,
    pub campus_code: String,
    pub payment_status: String, // Always "Paid"
    pub receipt_no: String,     // The value from doDuplicateReceipt('...')
}
