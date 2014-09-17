require_relative 'test_helper'

test 'renders a template' do
  template =  Tilt.new('test/fixtures/template.mote')

  result = template.render(nil, what: 'things')

  assert result.strip == \
    "If you cannot do great things, do small things in a great way."
end

scope do
  setup do
    <<-HTML
<!DOCTYPE html>
<html>
  <head>
    <title>Test</title>
  </head>
  <body>
    <p>Res, non verba.</p>\n
  </body>
</html>
    HTML
  end

  test "partial renders a template without the default layout" do
    get "/partial"

    assert last_response.body["<p>Res, non verba.</p>"]
  end

  test "view renders a template with a default layout" do |tmpl|
    get "/view"

    assert last_response.body[tmpl]
  end

  test "render shortcut renders a template with a default layout" do |tmpl|
    get "/render"

    assert last_response.body[tmpl]
  end
end
