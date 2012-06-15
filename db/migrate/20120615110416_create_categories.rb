class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :text
      t.string :title

      t.timestamps
    end
  end
end
