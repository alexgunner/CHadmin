require 'test_helper'

class FrequentQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frequent_question = frequent_questions(:one)
  end

  test "should get index" do
    get frequent_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_frequent_question_url
    assert_response :success
  end

  test "should create frequent_question" do
    assert_difference('FrequentQuestion.count') do
      post frequent_questions_url, params: { frequent_question: { answer: @frequent_question.answer, question: @frequent_question.question } }
    end

    assert_redirected_to frequent_question_url(FrequentQuestion.last)
  end

  test "should show frequent_question" do
    get frequent_question_url(@frequent_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_frequent_question_url(@frequent_question)
    assert_response :success
  end

  test "should update frequent_question" do
    patch frequent_question_url(@frequent_question), params: { frequent_question: { answer: @frequent_question.answer, question: @frequent_question.question } }
    assert_redirected_to frequent_question_url(@frequent_question)
  end

  test "should destroy frequent_question" do
    assert_difference('FrequentQuestion.count', -1) do
      delete frequent_question_url(@frequent_question)
    end

    assert_redirected_to frequent_questions_url
  end
end
