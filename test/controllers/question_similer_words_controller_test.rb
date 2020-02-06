require 'test_helper'

class QuestionSimilerWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get question_similer_words_new_url
    assert_response :success
  end

end
