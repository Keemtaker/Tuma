class LogoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def store_dir
    'public/uploads'
  end

end
