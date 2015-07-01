class WelcomeController < ApplicationController
  def index
  	@contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      # flash.now[:notice] = 'Thanks for your message. We'll get back to you asap!'
      render 'welcome/create'
    else
      # flash.now[:error] = 'Cannot send message.'
      render 'welcome/index'
    end
  end
end
