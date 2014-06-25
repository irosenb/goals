class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.decimal :amount
      t.boolean :finished
      t.decimal :contribution

      t.timestamps
    end
  end
end
