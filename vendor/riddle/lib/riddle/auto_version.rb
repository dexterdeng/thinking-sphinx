class Riddle::AutoVersion
  def self.configure
    controller = Riddle::Controller.new nil, ''
    version    = controller.sphinx_version
    version = '0.9.9' if version.nil?
    case version
    when '0.9.8', '0.9.9'
      require "riddle/#{version}"
    end
  end
end
