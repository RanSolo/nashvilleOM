require "instagram"

 Instagram.configure do |config|
   CALLBACK_URL = "http://nashvilleOM/oauth/callback"
   config.client_id = "0a8bb7719cdb47cbb40796e63d8cd673"
   config.client_secret = "fa87199ebb9344dd9ccb6b3618047740"
 end
