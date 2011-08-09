# encoding: UTF-8
ep = File.expand_path('..', File.dirname(__FILE__))
require "#{ep}/spec_helper"
require 'json'
require 'colors'

describe 'Colors::App' do

  def app
    Colors::App
  end

  it "get /env shows the environment" do
    get '/env'
    last_response.should be_ok
    last_response.body.should match(/PATH_INFO/)
  end

end

