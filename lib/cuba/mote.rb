require 'tilt/mote'

module MoteHelper
  def self.setup(app)
    app.settings[:render][:template_engine] = "mote"
  end
end
