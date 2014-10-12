class CreatePosttitles < ActiveRecord::Migration
  def change
    create_table :posttitles do |t|
      t.text :text

      t.timestamps
    end
  end
end
