class UpdateRemote < ActiveRecord::Migration[5.2]
  def change
    rename_column :meetings, :remote?, :remote
    change_column :meetings, :remote , :boolean
    Meeting.all.each do |meeting|
      meeting.update_attributes!(:remote => false)
    end
  end
end

