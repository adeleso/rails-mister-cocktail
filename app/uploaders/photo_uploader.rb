# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def default_url
    "/" + ["", "default.png"].compact.join('_')
  end
end
