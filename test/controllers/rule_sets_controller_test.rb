require 'test_helper'

class RuleSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rule_set = rule_sets(:one)
  end

  test "should get index" do
    get rule_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_rule_set_url
    assert_response :success
  end

  test "should create rule_set" do
    assert_difference('RuleSet.count') do
      post rule_sets_url, params: { rule_set: {  } }
    end

    assert_redirected_to rule_set_url(RuleSet.last)
  end

  test "should show rule_set" do
    get rule_set_url(@rule_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_rule_set_url(@rule_set)
    assert_response :success
  end

  test "should update rule_set" do
    patch rule_set_url(@rule_set), params: { rule_set: {  } }
    assert_redirected_to rule_set_url(@rule_set)
  end

  test "should destroy rule_set" do
    assert_difference('RuleSet.count', -1) do
      delete rule_set_url(@rule_set)
    end

    assert_redirected_to rule_sets_url
  end
end
