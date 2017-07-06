class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.datetime :trip_date
      t.string :photo

      t.timestamps
    end
  end
end
