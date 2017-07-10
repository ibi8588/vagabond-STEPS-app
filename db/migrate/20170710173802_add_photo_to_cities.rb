class AddPhotoToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :photo, :string
  end
end
