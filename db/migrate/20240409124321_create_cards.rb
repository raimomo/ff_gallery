class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :type, null: true
      t.string :rarity, null: true
      t.text :text, null: true

      t.timestamps
    end

    add_reference :cards, :expansions, foreign_key: true
    add_reference :cards, :images, foreign_key: true
  end
end
