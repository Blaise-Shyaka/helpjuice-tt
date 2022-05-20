class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :queries do |t|
      t.string :name
      t.timestamps
    end
    create_table :searches do |t|
      t.belongs_to :user
      t.belongs_to :query

      t.timestamps
    end
  end
end
