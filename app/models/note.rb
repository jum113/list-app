class Note < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search != ""
      Note.where('title LIKE(?)', "%#{search}%")
    else
      Note.order(id: "DESC")
    end
  end
end
