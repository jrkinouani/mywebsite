class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
      @contact = Contact.new(params[:contact])
      @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Votre message a bien été envoyé et sera traité dans les plus brefs délais.'
       #flash:{success:("Votre message a bien été envoyé et sera traité dans les plus brefs délais.")}
    else
      render :new
    end
  end
end
