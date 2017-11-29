class CreateAddNotesToPeople < ActiveRecord::Migration[5.1]
  def change
     add_column :people, :notes, :string
     add_column :people, :favorite, :boolean
     
  end
end
