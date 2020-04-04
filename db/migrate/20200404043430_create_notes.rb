class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :name
      t.integer :birthday
      t.string :where_from
      t.text :hobby
      t.text :detail

      t.timestamps
    end
  end
end
