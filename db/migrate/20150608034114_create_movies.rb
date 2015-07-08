class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :score
      t.string :imdb_link

      t.timestamps null: false
    end
  end
end
