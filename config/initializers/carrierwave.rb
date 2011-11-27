#S3_CONFIG = YAML.load_file(File.join(Rails.root, "config", "s3.yml"))[Rails.env]

S3_CONFIG = YAML.load(ERB.new(File.new("#{Rails.root}/config/s3.yml").read).result)[Rails.env]

# Fog Configuration
CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.fog_credentials = {
    :aws_access_key_id => S3_CONFIG['access_key_id'],
    :aws_secret_access_key => S3_CONFIG['secret_access_key'],
    :provider => 'AWS'
  }
  #config.fog_host = 'http://ruby.current.com'
  config.fog_directory = S3_CONFIG['bucket']
  config.fog_public = true
end

# S3 Configuration
#CarrierWave.configure do |config|
#  config.root = Rails.root.join('tmp')
#  config.cache_dir = 'carrierwave'
#  
#  config.s3_access_key_id = ENV['MINTY_AMAZON_ACCESS_KEY_ID']
#  config.s3_secret_access_key = ENV['MINTY_AMAZON_SECRET_ACCESS_KEY']
#  config.s3_bucket = "a_minty_bucket"
#  config.s3_access_policy = :public_read
#  config.s3_headers = {'Cache-Control' => 'max-age=315576000'}
#end
