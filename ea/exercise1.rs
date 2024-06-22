use secrecy::{ExposeSecret, Secret};
use tracing::instrument;

use crate::config::Config;
use crate::zoho::{Error, Query, Result, Token};

#[derive(Debug, Clone)]
pub struct Client {
    pub client_id: String,
    pub client_secret: Secret<String>,
    pub client: reqwest::Client,
}

impl Client {
    pub fn new(config: &Config) -> Self {
        let client_id = config.zoho.client_id.clone();
        let client_secret = config.zoho.client_secret.clone();

        Self {
            client_id,
            client_secret,
            client: reqwest::Client::new(),
        }
    }

    pub fn request_token(&self, client_code: &str) -> Result<Token> {}

    pub fn refresh_token(&self, client_token: &Token) -> Result<Token> {}

    pub fn get_invoice<'a>(client_code: &str, client_token: &Token) -> Result<Value> {}

    pub fn get_invoices<'a>(client_code: &str, client_token: &Token) -> Result<Value> {}
}

