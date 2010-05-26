# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_session',
  :secret      => '7824740ca0bd62b42bafbc1b50b5237b8989153c6d31b19eb11d43d1795d07213bfef8557cdd7385afe7718bee5d5e37dd3f2adb2fea1dd8aaddb9cacd33b4f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
