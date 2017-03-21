class AddContainersColumnToPairing < ActiveRecord::Migration[5.0]
  def change


  	add_column :pairings, :containers, :integer



  end
end
