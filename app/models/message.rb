class Message < ActiveRecord::Base
  
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 年齢は1以上99以内
  validates :age , value: { minimum: 1, maximum: 99} , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
end
