require "test_helper"

class LittleChildrenTest < Minitest::Test
  def test_that_it_has_a_version_number
    assert { !::LittleChildren::VERSION.nil? }
  end

  def test_if_server_variable_is_set
    osc_server = ::LittleChildren::OSCServer.new
    assert { osc_server.server.class.to_s == "OSC::EMServer" }
  end

  def test_if_default_port_is_set_on_server
    osc_server = ::LittleChildren::OSCServer.new
    s = osc_server.instance_variable_get(:@server)
    assert { s.instance_variable_get(:@port) == 2345 }
  end

  def test_if_port_is_correctly_set_on_server
    osc_server = ::LittleChildren::OSCServer.new(9999)
    s = osc_server.instance_variable_get(:@server)
    assert { s.instance_variable_get(:@port) == 9999 }
  end

  def test_if_default_method_is_set_on_server
    osc_server = ::LittleChildren::OSCServer.new
    s = osc_server.instance_variable_get(:@server)
    t = s.instance_variable_get(:@tuples)
    assert { t[0][0].instance_variable_get(:@pattern) == "\\A/test\\z" }
  end

  def test_if_method_is_correctly_added
    osc_server = ::LittleChildren::OSCServer.new
    osc_server.add_method("/another")
    s = osc_server.instance_variable_get(:@server)
    t = s.instance_variable_get(:@tuples)
    assert { t[1][0].instance_variable_get(:@pattern) == "\\A/another\\z" }
  end
end
