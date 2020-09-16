# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  content    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  validates :title, presence: true #タイトルと内容ないと保存しません
  validates :title, length: { minimum: 3, maximum: 40 }

  validates :content, presence: true
  validates :content, length: { minimum: 10, maximum: 160}
  validates :content, uniqueness: true

end
