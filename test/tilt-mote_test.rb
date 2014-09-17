require_relative 'test_helper'

test 'renders a template' do
  template =  Tilt.new('test/fixtures/template.mote')

  result = template.render(nil, what: 'things')

  assert result.strip == \
    "If you cannot do great things, do small things in a great way."
end
