class AddVignetteToPost < ActiveRecord::Migration
  def change
    add_column :posts, :vignette, :string
  end
end
