require 'sinatra'

#class IsbnApp < Sinatra::Base


	get '/' do

	erb :isbn_input, :locals => {:isbn_num => '', :results => '', :message_one => '', :number => ''}  #:message_one => "is a"
		end

	post '/isbn_num' do
		isbn_num = params[:isbn_input]

	results = valid_isbn(isbn_num)

	erb :isbn_input, :locals => {:isbn_num => isbn_num, :results => results, :message_one => " is a ", :number => ' isbn '} 

	end

#end