require "test_helper"

class SpotmyshotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotmyshot = spotmyshots(:one)
  end

  test "should get index" do
    get spotmyshots_url
    assert_response :success
  end

  test "should get new" do
    get new_spotmyshot_url
    assert_response :success
  end

  test "should create spotmyshot" do
    assert_difference('Spotmyshot.count') do
      post spotmyshots_url, params: { spotmyshot: { coordonnees: @spotmyshot.coordonnees, heure: @spotmyshot.heure, image: @spotmyshot.image, parametre: @spotmyshot.parametre, saison: @spotmyshot.saison, titre: @spotmyshot.titre } }
    end

    assert_redirected_to spotmyshot_url(Spotmyshot.last)
  end

  test "should show spotmyshot" do
    get spotmyshot_url(@spotmyshot)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotmyshot_url(@spotmyshot)
    assert_response :success
  end

  test "should update spotmyshot" do
    patch spotmyshot_url(@spotmyshot), params: { spotmyshot: { coordonnees: @spotmyshot.coordonnees, heure: @spotmyshot.heure, image: @spotmyshot.image, parametre: @spotmyshot.parametre, saison: @spotmyshot.saison, titre: @spotmyshot.titre } }
    assert_redirected_to spotmyshot_url(@spotmyshot)
  end

  test "should destroy spotmyshot" do
    assert_difference('Spotmyshot.count', -1) do
      delete spotmyshot_url(@spotmyshot)
    end

    assert_redirected_to spotmyshots_url
  end
end
