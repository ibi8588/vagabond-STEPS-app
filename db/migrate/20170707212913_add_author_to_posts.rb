class AddAuthorToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :author, :string
  end
end
