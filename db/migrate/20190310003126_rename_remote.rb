class RenameRemote < ActiveRecord::Migration[5.2]
  def change
    rename_column :meetings, :remote, :remote?
  end
end
