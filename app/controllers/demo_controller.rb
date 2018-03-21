class DemoController < ApplicationController

  layout false

  def index
  end

  def hello
  end

  def other_hello
    #redirect_to :root
    #redirect_to :demo_hello
    redirect_to(action: :index)
  end

  def google
    redirect_to('http://google.com.br')
  end
end
