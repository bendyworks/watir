$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..') unless $SETUP_LOADED
require 'unittests/setup'

class TC_JavaScript_Test < Test::Unit::TestCase
  def setup
    goto_page 'mouse_clicks.html'
  end

  def test_right_click
    browser.button(:id, "click_me").right_click
    assert_equal("You right clicked!", browser.text_field(:id, "testResult").value)
  end

  def test_middle_click
    browser.button(:id, "click_me").middle_click
    assert_equal("You middle clicked!", browser.text_field(:id, "testResult").value)
  end

  def test_left_click
    browser.button(:id, "click_me").left_click
    assert_equal("You left clicked!", browser.text_field(:id, "testResult").value)
  end

  def test_default_click
    browser.button(:id, "click_me").click
    assert_equal("You left clicked!", browser.text_field(:id, "testResult").value)
  end
end