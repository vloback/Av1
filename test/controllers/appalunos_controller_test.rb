require 'test_helper'

class AppalunosControllerTest < ActionController::TestCase
  setup do
    @appaluno = appalunos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appalunos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appaluno" do
    assert_difference('Appaluno.count') do
      post :create, appaluno: { curso: @appaluno.curso, emaillasalle: @appaluno.emaillasalle, emailpessoal: @appaluno.emailpessoal, matricula: @appaluno.matricula, nome: @appaluno.nome }
    end

    assert_redirected_to appaluno_path(assigns(:appaluno))
  end

  test "should show appaluno" do
    get :show, id: @appaluno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appaluno
    assert_response :success
  end

  test "should update appaluno" do
    patch :update, id: @appaluno, appaluno: { curso: @appaluno.curso, emaillasalle: @appaluno.emaillasalle, emailpessoal: @appaluno.emailpessoal, matricula: @appaluno.matricula, nome: @appaluno.nome }
    assert_redirected_to appaluno_path(assigns(:appaluno))
  end

  test "should destroy appaluno" do
    assert_difference('Appaluno.count', -1) do
      delete :destroy, id: @appaluno
    end

    assert_redirected_to appalunos_path
  end
end
