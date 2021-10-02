class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :birthdate
      t.string :username

      t.timestamps
    end
  end
end
