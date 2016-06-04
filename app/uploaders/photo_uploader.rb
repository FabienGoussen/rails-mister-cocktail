class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 800, 600
  end

  version :logo_beer do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 200, height: 200, crop: :thumb
  end
end
