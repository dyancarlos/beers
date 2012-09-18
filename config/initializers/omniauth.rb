OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, "529863650362167", "cec7a1722d9a26b2f52af86e38588b27", scope: "email, publish_stream"
end