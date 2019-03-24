class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :destroy, :edit, :update]

  def new
    @contact = Contact.new
  end

  def create
      @contact = Contact.create!(contact_params)

    if @contact.save
        AdminMailer.contact(@contact).deliver # Je vais expliquer cette ligne juste après...
      redirect_to new_contact_path, flash: {success: (:"Votre message a bien été envoyé et sera traité dans les plus brefs délais.")}
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email,:message, :phone )
  end
end
