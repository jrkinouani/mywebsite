class AdminMailer < ApplicationMailer

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def message_user(contact)
    @contact = contact
    mail( from: 'kinouani@gmail.com', to: 'kinouan@gmail.com', subject: "Nouveau message depuis le site")
  end
end
