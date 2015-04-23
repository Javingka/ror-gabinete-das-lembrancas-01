require 'test_helper'

class GabineteObjectsControllerTest < ActionController::TestCase
  setup do
    @gabinete_object = gabinete_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gabinete_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gabinete_object" do
    assert_difference('GabineteObject.count') do
      post :create, gabinete_object: { descripcao: @gabinete_object.descripcao, exhibit_id: @gabinete_object.exhibit_id, nome: @gabinete_object.nome }
    end

    assert_redirected_to gabinete_object_path(assigns(:gabinete_object))
  end

  test "should show gabinete_object" do
    get :show, id: @gabinete_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gabinete_object
    assert_response :success
  end

  test "should update gabinete_object" do
    patch :update, id: @gabinete_object, gabinete_object: { descripcao: @gabinete_object.descripcao, exhibit_id: @gabinete_object.exhibit_id, nome: @gabinete_object.nome }
    assert_redirected_to gabinete_object_path(assigns(:gabinete_object))
  end

  test "should destroy gabinete_object" do
    assert_difference('GabineteObject.count', -1) do
      delete :destroy, id: @gabinete_object
    end

    assert_redirected_to gabinete_objects_path
  end
end
