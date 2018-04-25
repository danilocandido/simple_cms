class DemoController < ApplicationController

  layout false

  def index
    render :index
  end

  def hello
    @array = 1..5
    @id = params[:id]
    @page = params[:page]
    render :hello
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
