require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "bd39e68d741a411085a81d155f1a14f9", "fd2f75a53744417598e2e69030c2986d", scope: 'playlist-read-private'
end
