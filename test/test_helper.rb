require 'cutest'
require 'cuba/test'
require 'cuba/render'
require File.expand_path("../lib/tilt/mote", File.dirname(__FILE__))
require File.expand_path("../lib/cuba/mote", File.dirname(__FILE__))

Cuba.plugin(Cuba::Render)
Cuba.plugin(Mout::Render)

Cuba.settings[:render][:views] = "./test/views"

Cuba.define do
  on "partial" do
    res.write partial("dashboard")
  end

  on "view" do
    res.write view("dashboard", title: "Test")
  end

  on "render" do
    render("dashboard", title: "Test")
  end
end
