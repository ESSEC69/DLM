class Post < ActiveRecord::Base
  include Bootsy::Container
  extend FriendlyId

  friendly_id :title, use: :slugged

end
