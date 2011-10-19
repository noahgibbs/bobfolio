#!/usr/bin/env ruby

require "sinatra"

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
