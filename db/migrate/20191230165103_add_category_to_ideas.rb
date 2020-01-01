class AddCategoryToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :category_id, :integer
  end
end
