# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_new.markyoung.me_session',
  :secret      => '8caf654c25ee5b3e11e28fbb9b188872fab0c66a1629f12927031c8a6fa4e54751ee0734893f7fbee907beb0aad18b649a46dfe5c82e7b3b61aed09ff6d4c426'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
