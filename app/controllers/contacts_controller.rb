class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
      @contact = Contact.new(params[:contact])
      @contact.request = request
    if @contact.deliver # Je vais expliquer cette ligne juste après...
      redirect_to new_contact_path, flash: {success: (:"Votre message a bien été envoyé et sera traité dans les plus brefs délais.")}
    else
      render :new
    end
  end

end
