gifanime
========

Thin wrapper for RMagick's animated GIF generator

# Setup

1. install ImageMagick (eg. when OS X, `brew install imagemagick`)
2. `gem install gifanime`

# Usage

```ruby
require "gifanime"

gifanime = Gifanime.new("/path/to/output.gif", delay: 10)
gifanime.add("/path/to/a.png")
gifanime.add("/path/to/b.jpg")
gifanime.generate! # => generates /path/to/output.gif
```

# License
* [MIT](http://makimoto.mit-license.org)
  * and you must follow also [ImageMagick's license](http://www.imagemagick.org/script/license.php).
