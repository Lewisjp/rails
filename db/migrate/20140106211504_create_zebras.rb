class CreateZebras < ActiveRecord::Migration
  def change
  	create_table :zebras do |t|
  		t.text :name
  		t.integer :age
  	end
  end
end
