#!/usr/bin/env ruby

require "sinatra"

MY_NAME = "Bob Robertson"
LINK_TEXT = <<LINK_TEXT
  Add Links to GitHub, LinkedIn or
  <a href="http://blog.angelbob.com">whatever makes you look good</a>
  here!
LINK_TEXT

# You can omit any tag of any entry and it will just be empty.  Any
# entry not marked professional goes in personal.  The links with
# class "fancybox" in pictures will open a lightbox when clicked on.
# The outer link (a href) contains the image that will appear when
# clicked on.  The inner img tag contains the thumbnail, which can be
# the same image if you're not worried about bandwidth.

# Ruby allows single-quoted or double-quoted strings, or shell-style
# strings with <<END_STRING, which go until you see END_STRING on a
# line by itself.  All of them are just strings, though.
#
# In double-quoted strings you can use "#{ruby code}" to embed ruby
# code in your strings.
#
# Those things with the colon on the front are symbols.  They're
# basically like strings as far as you're concerned.

ENTRIES = [
  {
    :professional => true,
    :tags => [ :lolcode, :enterprise ],
    :dates => "2008-2010",
    :organization => "LOLTech, Inc",
    :description => "LolCRM, very Enterprisey!",
    :tools => "Lolcode, C++, Rational Rose, darcs",
    :role => "Senior Ceiling Engineer",
    :pictures => [
      {
        :image_url => "http://scienceblogs.com/gregladen/images/LOLcode_book.jpg",
        :alt_text => "LOLCrm 1",
      },
      {
        :image_url => "http://beerpla.net/wp-content/uploads/TheUltimatePunProgrammingInLOLCODE_11173/image.png",
        :alt_text => "LOLCrm 2",
      },
    ],
  },
  {
    :professional => true,
    :tags => [ :ruby, :enterprise ],
    :dates => "2006-2008",
    :organization => "Most Enterprisiest, Ltd.",
    :description => "Management Manager Time Manager",
    :tools => 'Ruby, XML, <a href="https://github.com/tenderlove/enterprise">Ruby Enterprise</a>, ClearCase',
    :role => "Enterprise Finagler and Enterpriser",
    :pictures => [
      {
        :image_url => "http://onproductmanagement.files.wordpress.com/2007/06/what-enterprise-software-delivers.jpg",
        :alt_text => "Enterprise Pyramid",
      },
    ],
  },
  {
    :professional => false,
    :tags => [ :student ],
    :dates => "2008",
    :organization => '<a href="http://www.cmu.edu">Carnegie Mellon University</a>',
    :description => "Parallel Artificial Intelligence Monads for Bovik-Tetizu Network Architectures, A Love Story",
    :tools => "AcademiaLISP, SML/NJ",
    :role => "Author",
    :pictures => [
      {
        :image_url => "http://static.lulu.com/product/paperback/sigbovik-2009/6522581/thumbnail/320",
        :alt_text => "SIGBovik, a Respectable Institution",
      },
    ],
  },

]

get "/" do
  erb :index, :locals => { :MY_NAME => MY_NAME,
                           :LINK_TEXT => LINK_TEXT,
                           :ENTRIES => ENTRIES }
end
