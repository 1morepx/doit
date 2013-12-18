require 'zeus/rails'

class CustomPlan < Zeus::Rails

  def developement_environment
    super
    restart_pow
  end


  private
  def restart_pow
    FileUtils.touch('./tmp/restart.txt')
  end

  def test_console
    console
  end
end

Zeus.plan = CustomPlan.new
