class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
      @contact = Contact.create(contact_params)
    if @contact.save
        AdminMailer.message_user(@contact).deliver_now # Je vais expliquer cette ligne juste après...
      redirect_to home_path, flash: {success: (:"Votre message a bien été envoyé et sera traité dans les plus brefs délais.")}
    else
      render :home
    end
  end
  private

   def contact_params
    params.require(:contact).permit(:name, :email,:message, :phone )
  end

end
