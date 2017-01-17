class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:contact_send] = true
    else
      flash[:contact_send] = false
    end

    redirect_to "/"
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end

end
