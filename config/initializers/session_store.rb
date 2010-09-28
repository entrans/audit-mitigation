# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_audit_session',
  :secret      => '875c7c0edef483049b3a92cc57ab75caa8af47276a98b3e147d1c76b7702e5ce54f186503ae6857aa5b99140fc2dec8fef6909e13a5141cd6aac446d486ec342'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
