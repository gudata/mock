class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.text :text
      t.belongs_to :category

      t.timestamps
    end
  end
end
