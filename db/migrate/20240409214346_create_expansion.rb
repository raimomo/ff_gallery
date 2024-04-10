class CreateExpansion < ActiveRecord::Migration[7.1]
  def change
    create_table :expansions do |t|
      t.string :title
      t.string :release_date, null: true
      t.sting :image, null: true

      t.timestamps
    end
  end
end
