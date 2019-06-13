class AddUserToTunes < ActiveRecord::Migration[5.2]
  def change
    add_reference :tunes, :user, foreign_key: true
  end
end
