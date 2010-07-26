# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pia_session',
  :secret      => '3f40315df55854a1924322ff3e6c4ee12596fa5cfed1c7afcf0d36c033ec9491d837fa21706ee9206df26d6ce63669bfc3ef1f17dd8bd71ceb501bbbc84e1f9a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
