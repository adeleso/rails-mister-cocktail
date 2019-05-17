# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url
    # ActionController::Base.helpers.asset_path("default.png")
    "https://res.cloudinary.com/dl8rau6sl/image/upload/v1558093417/sample.jpg"
  end
end
