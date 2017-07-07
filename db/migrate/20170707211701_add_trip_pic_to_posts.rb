class AddTripPicToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :trip_pic, :string
  end
end
