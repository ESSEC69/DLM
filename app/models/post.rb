class Post < ActiveRecord::Base
  mount_uploader :banner, BannerUploader
  mount_uploader :vignette, VignetteUploader
  include Bootsy::Container
  extend FriendlyId

  friendly_id :title, use: [:slugged, :finders]

  def numerotation
    self.id - 1
  end

end
