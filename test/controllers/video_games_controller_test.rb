require 'test_helper'

class VideoGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_game = video_games(:one)
  end

  test "should get index" do
    get video_games_url
    assert_response :success
  end

  test "should get new" do
    get new_video_game_url
    assert_response :success
  end

  test "should create video_game" do
    assert_difference('VideoGame.count') do
      post video_games_url, params: { video_game: { editor: @video_game.editor, id: @video_game.id, img_url: @video_game.img_url, name: @video_game.name } }
    end

    assert_redirected_to video_game_url(VideoGame.last)
  end

  test "should show video_game" do
    get video_game_url(@video_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_game_url(@video_game)
    assert_response :success
  end

  test "should update video_game" do
    patch video_game_url(@video_game), params: { video_game: { editor: @video_game.editor, id: @video_game.id, img_url: @video_game.img_url, name: @video_game.name } }
    assert_redirected_to video_game_url(@video_game)
  end

  test "should destroy video_game" do
    assert_difference('VideoGame.count', -1) do
      delete video_game_url(@video_game)
    end

    assert_redirected_to video_games_url
  end
end
