class AddCountrycodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :countrycode, :integer
  end
end
