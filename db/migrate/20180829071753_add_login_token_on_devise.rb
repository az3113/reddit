class AddLoginTokenOnDevise < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :login_token
    add_column :users, :login_token,   :string
  end
end
