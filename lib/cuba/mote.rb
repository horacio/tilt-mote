module Mout
  module Render
    def self.setup(app)
      app.settings[:render][:template_engine] = "mote"
    end
  end
end
