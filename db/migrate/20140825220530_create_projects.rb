class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.boolean :verified
      t.boolean :status
      t.datetime :begins_at
      t.datetime :ends_at
      t.float :price
      t.references :user, index: true

      t.timestamps
    end
  end
end
