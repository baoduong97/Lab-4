class SayController < ApplicationController
  def hello
    @time = Time.now
    @year = @time.year
  end

  def goodbye
  end
  
  def about
  end
end
