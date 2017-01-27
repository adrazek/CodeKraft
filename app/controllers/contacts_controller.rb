class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:contact_send] = true

      #if Rails.env.production?

        notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
          defaults channel: "#contacts",
                   username: "facteur"
        end

        notifier.ping "\nNew message from *#{contact_params[:name]}* (<#{contact_params[:email]}>)\n\n_#{contact_params[:message]}_\n"
      #end

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
