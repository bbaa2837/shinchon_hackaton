class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title #제목
      t.string :content #내용
      t.string :writer #글 작성자
      t.string :contact #작성자 연락처
      
      t.integer :group_num #모집인원
      t.integer :current_num, default: 0 #현재인원
      
      t.integer :contest_id
      
      t.timestamps null: false
    end
  end
end
