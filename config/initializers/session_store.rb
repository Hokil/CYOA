# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CYOA_session',
  :secret      => '0f5a23d69237fc64de8d26fdc9a503fb235c438420dcf420143d11c48619c25dedc876d7c08c68753fdec5bae0b79338a4ae8b9c5fef778b4b08495a6916938e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
