require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'
require File.join(File.dirname(__FILE__), 'settings')
require File.join(File.dirname(__FILE__), 'TinysongSearcher')

configure do
      set :views, "#{File.dirname(__FILE__)}/views"
end

$searcher = TinysongSearcher.new(Config.tinysong_api, Config.tinysong_key)

get '/' do
    $searcher.search('Jason Derulo', 'The Other Side')
end

