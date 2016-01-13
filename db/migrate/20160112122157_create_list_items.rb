class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.text :body
      t.string :name
      t.references :list, index: true
      t.timestamps
    end
  end
end