class CreateWords < ActiveRecord::Migration
  def change
  	create_table :words do |t|
  		t.string :palabras
  		t.string :canonical
  	end
  end
end
