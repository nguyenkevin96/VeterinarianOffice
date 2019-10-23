require 'test_helper'

class DateofinfectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dateofinfection = dateofinfections(:one)
  end

  test "should get index" do
    get dateofinfections_url
    assert_response :success
  end

  test "should get new" do
    get new_dateofinfection_url
    assert_response :success
  end

  test "should create dateofinfection" do
    assert_difference('Dateofinfection.count') do
      post dateofinfections_url, params: { dateofinfection: { animal_id: @dateofinfection.animal_id, dateofinfection: @dateofinfection.dateofinfection, disease_id: @dateofinfection.disease_id } }
    end

    assert_redirected_to dateofinfection_url(Dateofinfection.last)
  end

  test "should show dateofinfection" do
    get dateofinfection_url(@dateofinfection)
    assert_response :success
  end

  test "should get edit" do
    get edit_dateofinfection_url(@dateofinfection)
    assert_response :success
  end

  test "should update dateofinfection" do
    patch dateofinfection_url(@dateofinfection), params: { dateofinfection: { animal_id: @dateofinfection.animal_id, dateofinfection: @dateofinfection.dateofinfection, disease_id: @dateofinfection.disease_id } }
    assert_redirected_to dateofinfection_url(@dateofinfection)
  end

  test "should destroy dateofinfection" do
    assert_difference('Dateofinfection.count', -1) do
      delete dateofinfection_url(@dateofinfection)
    end

    assert_redirected_to dateofinfections_url
  end
end
