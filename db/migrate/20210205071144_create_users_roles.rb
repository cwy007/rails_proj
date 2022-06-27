class CreateUsersRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :users_roles do |t|

      t.timestamps
    end
  end
end
