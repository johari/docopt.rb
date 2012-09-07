require File.expand_path("../../lib/docopt.rb", __FILE__)
doc = "Usage: name.rb -e EXT [-oh]

Arguments:
  EXT  name of extension
  HI   hello message

Options:
  -e EXT --extension=EXT  note the *double* space before me
  -o HI                   says hi
  -h --help               shows help
"

begin
  require "pp"
  pp Docopt::docopt(doc)
rescue Docopt::Exit => e
  puts e.message
end
