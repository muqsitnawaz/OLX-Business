class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.belongs_to :user, index:true
      t.string :name,               null: false, default: ""
      t.string :industry,           null: false, default: ""
      t.datetime :started,          null: false
      t.integer :price,             null: false, default: ""
      
      t.string :address,            null: false, default: ""
      t.string :tehsil,             null: false, default: ""
      t.string :city,               null: false, default: ""
      t.string :state,              null: false, default: ""
      
      # Iternal details
      t.integer :num_employees
      
      t.timestamps null: false
    end
  end
end
