// add client_ to:
// 1. id -> client_id
//
// do the same for the following:
// 2. secret
// 3. code
// 4. token
//
// make all the functions async
// ie. pub async fn

use secrecy::{ExposeSecret, Secret};
use tracing::instrument;

use crate::config::Config;
use crate::zoho::{Error, Query, Result, Token};

#[derive(Debug, Clone)]
pub struct Client {
    pub id: String,
    pub secret: Secret<String>,
    pub client: reqwest::Client,
}

impl Client {
    pub fn new(config: &Config) -> Self {
        let id = config.zoho.id.clone();
        let secret = config.zoho.secret.clone();

        Self {
            id,
            secret,
            client: reqwest::Client::new(),
        }
    }

    pub fn request_token(&self, code: &str) -> Result<Token> {}

    pub fn refresh_token(&self, token: &Token) -> Result<Token> {}

    pub fn get_invoice<'a>(code: &str, token: &Token) -> Result<serde_json::Value> {}

    pub fn get_invoice_with_query<'a>(code: &str, token: &Token) -> Result<serde_json::Value> {}

    pub fn get_invoices<'a>(code: &str, token: &Token) -> Result<serde_json::Value> {}
}

