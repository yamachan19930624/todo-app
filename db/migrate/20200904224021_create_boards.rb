class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title #記事のタイトル保存
      t.text :content #記事の内容保存
      t.timestamps
    end
  end
end
