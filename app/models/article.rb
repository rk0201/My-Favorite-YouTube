class Article < ApplicationRecord
  belongs_to :user
  has_many :favorites,dependent: :destroy
  validates :title, presence: true
  validates :channnel_name, presence: true
  validates :thumbnail, presence: true
  enum status: {
    public: 0, #公開
    private: 1 #非公開
  },_prefix: true
end
