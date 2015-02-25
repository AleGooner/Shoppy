require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title:  'Lorem Ipsum',
      description:  'Wibbles are fun!',
      image_url: 'lorem.jpg',
      price: 19.95
    }
  end

  test "should get products index" do
    get :index
    assert_response :success

    assert_not_nil assigns(:products)
    assert_select 'button', 'New product'
    assert_select '.list_description', minimum: 3
    assert_select '.list_description dl dt', 'Monopoly'
    assert_select '.list_actions' do |elements|
      elements.each do |element|
        assert_select element, "a", 3
      end
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
