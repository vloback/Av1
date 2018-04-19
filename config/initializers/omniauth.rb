OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '302620056430-0mc7c6rk4oj1jhogng85fquo1euhae5g.apps.googleusercontent.com', 'ea6cQk8SYg1KhIcUtVv5j86w', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end