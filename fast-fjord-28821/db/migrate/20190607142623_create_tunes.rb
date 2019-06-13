class CreateTunes < ActiveRecord::Migration[5.2]
  def change
    create_table :tunes do |t|
      t.string :title
      t.string :composer

      t.timestamps
    end
  end
end
