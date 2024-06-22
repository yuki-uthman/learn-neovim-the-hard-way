use secrecy::{ExposeSecret, Secret};
use tracing::instrument;

use crate::config::Config;
use crate::zoho::{Error, Query, Result, Token};

#[derive(Debug, Clone)]
pub struct Client {
    client_id: String
    client_secret: Secret<String>
    client: reqwest::Client
}

impl Client {
    fn new(config: &Config) -> Self {
        let client_id = config.zoho.client_id.clone()
        let client_secret = config.zoho.client_secret.clone()

        Self {
            client_id,
            client_secret,
            client: reqwest::Client::new(),
        }
    }

    fn request_token(&self, client_code: &str) -> Result<Token>

    fn refresh_token(&self, client_token: &Token) -> Result<Token>

    fn get_invoice<'a>(client_code: &str, client_token: &Token) -> Result<Value>

    fn get_invoices<'a>(client_code: &str, client_token: &Token) -> Result<Value>
}

