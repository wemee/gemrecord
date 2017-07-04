require 'test_helper'

class RoutinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @routine = routines(:one)
  end

  test "should get index" do
    get routines_url
    assert_response :success
  end

  test "should get new" do
    get new_routine_url
    assert_response :success
  end

  test "should create routine" do
    assert_difference('Routine.count') do
      post routines_url, params: { routine: { name: @routine.name, references: @routine.references } }
    end

    assert_redirected_to routine_url(Routine.last)
  end

  test "should show routine" do
    get routine_url(@routine)
    assert_response :success
  end

  test "should get edit" do
    get edit_routine_url(@routine)
    assert_response :success
  end

  test "should update routine" do
    patch routine_url(@routine), params: { routine: { name: @routine.name, references: @routine.references } }
    assert_redirected_to routine_url(@routine)
  end

  test "should destroy routine" do
    assert_difference('Routine.count', -1) do
      delete routine_url(@routine)
    end

    assert_redirected_to routines_url
  end
end
