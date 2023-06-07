class AddMoviesToBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :movie_id, :string
    remove_column :bookmarks, :list_id, :string

    add_reference :bookmarks, :movie, foreign_key: true
    add_reference :bookmarks, :list, foreign_key: true

  end
end
