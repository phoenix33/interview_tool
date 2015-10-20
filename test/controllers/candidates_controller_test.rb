require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { city: @candidate.city, em_addr: @candidate.em_addr, first_name: @candidate.first_name, last_name: @candidate.last_name, p_word: @candidate.p_word, phone_number: @candidate.phone_number, state: @candidate.state, u_id: @candidate.u_id }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { city: @candidate.city, em_addr: @candidate.em_addr, first_name: @candidate.first_name, last_name: @candidate.last_name, p_word: @candidate.p_word, phone_number: @candidate.phone_number, state: @candidate.state, u_id: @candidate.u_id }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
