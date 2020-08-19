class Article < ApplicationRecord
  belongs_to :user
  enum status: {
    public: 0, #公開
    private: 1 #非公開
  },_prefix: true
end
