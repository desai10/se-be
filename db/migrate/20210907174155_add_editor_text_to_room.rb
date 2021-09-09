class AddEditorTextToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :editor_text, :text
  end
end
