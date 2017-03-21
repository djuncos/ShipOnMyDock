class Boat < ApplicationRecord

	  has_attached_file :image, styles: { large: "300x300>", thumb: "100x100>" }, default_url: "/images/missingboatthumb.png"
  	  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  	  has_many :pairings
	  has_many :jobs, through: :pairings

end
