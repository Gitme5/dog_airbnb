class ForeignKeyUpdate < ActiveRecord::Migration[6.0]
  def change

  	add_reference :strolls, :dog_sitter, foreign_key: true
  	add_reference :strolls, :dog, foreign_key: true
  	add_reference :dog_sitters, :citie, foreign_key: true
  	add_reference :dogs, :citie, foreign_key: true
  end
end
