class CreateIntroductions < ActiveRecord::Migration[6.0]
  def change
    create_table :introductions do |t|
      t.bigint  :user,   null: false, foreign_key: true
      t.bigint  :board,  null: false, foreign_key: true
      t.text        :content,null: false
      t.integer     :category_id,null: false
      t.boolean     :permission
      
      t.timestamps
    end
  end
end
