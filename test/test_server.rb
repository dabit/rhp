require "test_helper"

class TestServer < Test::Unit::TestCase
  def test_template_from_file
    path    = "./test/support/file.erb"
    content = "<html></html>\n"

    assert_equal content, RHP::Server.template_from_file(path)
  end

  def test_parse_template
    content = "<% %><html></html>"
    result  = "<html></html>"

    assert_equal result, RHP::Server.parse_template(content)
  end

  def test_call
    env      = {"PATH_INFO" => "/cgi/index.erb"}
    result   = "<html></html>"
    headers  = {}
    template = stub

    mock(RHP::Server).template_from_file("./cgi/index.erb") { template }
    mock(RHP::Server).parse_template(template) { result }

    response = RHP::Server.call(env)

    assert_equal 200     , response[0]
    assert_equal headers , response[1]
    assert_equal result  , response[2].read
  end
end
