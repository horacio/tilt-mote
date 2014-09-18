# borrowed from:
# https://github.com/harmoni-io/mote-render/blob/master/lib/mote/render.rb
module Mout
  module Render
    include ::Mote::Helpers

    def self.setup(app)
      app.settings[:template_engine] = "mote"
    end

    def render(template, locals = {}, layout = settings[:render][:layout])
      res.write(view(template, locals, layout))
    end

    def view(template, locals = {}, layout = settings[:render][:layout])
      partial(layout, locals.merge(content: partial(template, locals)))
    end

    def partial(template, locals = {})
      mote(mote_path(template), locals.merge(app: self), TOPLEVEL_BINDING)
    end

    def mote_path(template)
      if template.end_with?(".mote")
        template
      else
        File.join(settings[:render][:views], "#{template}.mote")
      end
    end
  end
end
