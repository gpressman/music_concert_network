class AddColumnsToShows < ActiveRecord::Migration
  def change

  	add_column(:shows, :date, :datetime)
	add_column(:shows, :project_id, :integer)
	add_column(:shows, :artist, :string)
	add_column(:shows, :venue, :string)
	add_column(:shows, :city, :string)
	add_column(:shows, :description, :text)
  end
end
