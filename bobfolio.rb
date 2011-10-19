#!/usr/bin/env ruby

require "sinatra"

# See how you can change your name and modify your top-of-page
# link text here?  That'll get you started...
#
# After that, page to the bottom of views/index.erb to actually add
# all your portfolio entries!

MY_NAME = "Bob Robertson"
LINK_TEXT = <<LINK_TEXT
  Add Links to GitHub, LinkedIn or
  <a href="http://blog.angelbob.com">whatever makes you look good</a>
  here!
LINK_TEXT

get "/" do
  erb :index, :locals => { :MY_NAME => MY_NAME,
                           :LINK_TEXT => LINK_TEXT }
end
