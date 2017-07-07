class ChangeColumnNameemailsInUserToEmails < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :email, :email
  end
end
