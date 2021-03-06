class CreatePlatforms < ActiveRecord::Migration[6.1]
  def change
    create_table :platforms do |t|
      t.string :name
      t.datetime :bought
      t.string :version
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
