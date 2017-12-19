class PagesController < ApplicationController
  def about
    puts "I am responding to the request"
  end

  def contact
    puts "I am responding too"
  end

  def home
    @categories = %w(indian sushi french)
  end

end
