require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'
require 'haml'
require File.join(File.dirname(__FILE__), 'TinysongSearcher')

configure do
      set :views, "#{File.dirname(__FILE__)}/views"
end

$searcher = TinysongSearcher.new('tinysong.com', '0022383a92ae2beeeda63ee5f486398f')

get '/' do
    $searcher.search('Jason Derulo', 'The Other Side')
end

