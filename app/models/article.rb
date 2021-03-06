class Article < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :channnel_name, presence: true
  validates :thumbnail, presence: true, uniqueness: true

  enum status: {
    public: 0, # 公開
    private: 1 # 非公開
  }, _prefix: true
end
