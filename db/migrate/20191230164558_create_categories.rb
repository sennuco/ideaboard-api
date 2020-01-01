class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.boolean :urgent

      t.timestamps
    end
  end
end
