class CreateAdderesses < ActiveRecord::Migration
  def change
    create_table :adderesses do |t|
      t.references :user
      t.string :name
      t.timestamps
    end
  end
end
