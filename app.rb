require 'sinatra'
require 'ostruct'

class Usecase < OpenStruct
  def initialize(params)
    super params
  end
end

get '/' do
  erb :index
end

post '/' do
  @usecase = Usecase.new params[:usecase]
  erb :index
end
