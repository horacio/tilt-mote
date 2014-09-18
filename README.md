tilt-mote
=========

Use your Mote templates with Tilt.

Usage
-----

Suppose you have this Mote template:

```
Dashboard {{dashboard.title}}
```

You can render it with Tilt doing:

```ruby
require 'tilt/mote'

# service object
@dashboard = Dashboard.new

template = Tilt.new('dashboard.mote')
template.render(nil, dashboard: @dashboard)
```

Cuba plugin
-----------

There is a [Cuba](https://github.com/soveran/cuba) minimal plugin you could use.

```ruby
require 'cuba'
require 'cuba/render'
require 'tilt/mote'

Cuba.plugin Cuba::Render
Cuba.plugin MoteHelper
```

That's it! Now you can use your Mote templates in your Cuba application.

Installation
------------

You can install tilt-mote via RubyGems.

```
$ gem install tilt-mote
```

License
-------

Copyright (c) 2014 Horacio Bertorello

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
