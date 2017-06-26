class AddKakaoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :kakao, :string
  end
end
