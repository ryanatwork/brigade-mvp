class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :tag_line
      t.text :description
      t.text :instructions
      t.string :github_url
      t.string :demo_url
      t.string :deployments

      t.timestamps
    end
  end
end
