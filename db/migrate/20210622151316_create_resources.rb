class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
