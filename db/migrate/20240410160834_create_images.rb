class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :type

      t.timestamps
    end

    add_reference :images, :cards, foreign_key: true

  end
end
