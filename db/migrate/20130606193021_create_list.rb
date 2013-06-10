class List < ActiveRecord::Migration
  def change
    create_table :list do |t|
      t.string :name

      t.timestamps
    end
  end
end
