class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :text
      t.string :title

      t.timestamps
    end
  end
end
