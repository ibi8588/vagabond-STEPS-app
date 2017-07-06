class AddCityReferenceToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :city, foreign_key: true
  end
end
