require 'tilt' unless defined?(Tilt)
require 'mote'

module Tilt
  class MoteTemplate < Template
    include Mote::Helpers

    def prepare; end

    def evaluate(scope, locals = {}, &block)
      template = Mote.parse(data, scope, locals.keys)
      template.call(locals)
    end
  end

  register(MoteTemplate, 'mote')
end
