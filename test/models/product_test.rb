require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures  :products

  test "product attributes must not be empty" do
    # Creating a product with no attribtes set, we'll expect it to be invalid, so, there must
    # be an error associated with each field.
    product = Product.new

    # the assert() method expects its argument to be true. If the argument to assert() is false,
    # the assertion fails. Since an empty Product model cannot pass validation, we express this
    # expected behavior by asserting that it isn't valid (assert ptoduct..invalid?)
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(title:  "Risk",
                          description: "World domination game for the people!",
                          image_url: "somepicture.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
     product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
      Product.new(title: "Settlers of Cattan",
        description: "Description burb",
        price: 1,
        image_url: image_url)
  end

  test "image url" do
    ok = %w{fotaza.jpg fotaza.gif fotaza.png FOTAZA.JPG FOTAZA.Jpg
            http://a.b.c/e/i/o/fotaza.jpg}
    bad = %w{ fotico.doc fotico.pdf fotico.png/more fotico.jpg.more}
    ok.each do |name|
        assert new_product(name).valid?, "#{name} should be valid"
    end

    bad.each do |name|
        assert new_product(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title:       products(:monopoly).title,
                          description: "yyy",
                          price:       1,
                          image_url:   "fotaza.gif")

    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end

  test "product is not valid without a unique title - i18n" do
    product = Product.new(title:       products(:monopoly).title,
                          description: "yyy",
                          price:       1,
                          image_url:   "fotaza.gif")

    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 product.errors[:title]
  end
end
