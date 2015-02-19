class Product < ActiveRecord::Base

    # validates that there are no empty fields
    validates :title,  :description, :image_url, presence: true
   # validates that the price is valid
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    # validates that each product has a unique title
    validates :title, uniqueness: true

    # checks for  a valid url
    validates :image_url, allow_blank: true, format: {
        with:   %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }
end
