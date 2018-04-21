require 'test_helper'

class EnumExporter::Test < ActiveSupport::TestCase
  test "exports as yaml" do
    yaml = YAML.load(EnumExporter.yaml)
    assert_equal 2, yaml.count
    assert_equal 0, yaml[0]["Book"]["availability"]["available"]
    assert_equal 1, yaml[0]["Book"]["availability"]["unavailable"]
    assert_equal 0, yaml[1]["Conversation"]["status"]["active"]
    assert_equal 1, yaml[1]["Conversation"]["status"]["archived"]
  end

  test "exports as json" do
    json = JSON.load(EnumExporter.json)
    assert_equal 2, json.count
    assert_equal 0, json[0]["Book"]["availability"]["available"]
    assert_equal 1, json[0]["Book"]["availability"]["unavailable"]
    assert_equal 0, json[1]["Conversation"]["status"]["active"]
    assert_equal 1, json[1]["Conversation"]["status"]["archived"]
  end
end
