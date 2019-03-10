class AddLocationToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :location, :string
    add_column :meetings, :remote, :boolean
  end
end
