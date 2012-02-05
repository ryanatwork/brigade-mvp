class AddCfaProjectUrlToApp < ActiveRecord::Migration
  def change
    add_column :apps, :cfa_project_url, :string

  end
end
