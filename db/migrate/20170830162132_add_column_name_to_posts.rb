class AddColumnNameToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :review, :text
    add_column :posts, :city_id, :integer
  end
end
