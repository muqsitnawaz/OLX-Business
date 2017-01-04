class CreateBusinessImages < ActiveRecord::Migration
  def change
    create_table :business_images do |t|
      t.belongs_to :business, index:true
      t.string :image


      t.timestamps null: false
    end
  end
end
