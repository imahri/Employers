class CreateEmployers < ActiveRecord::Migration[7.1]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :position
      t.string :salary

      t.timestamps
    end
  end
end
