class RenameTokenFieldOnStory < ActiveRecord::Migration[5.0]
  def change
    rename_column :stories, :edit_token, :token
  end
end
