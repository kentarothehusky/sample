class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.create(contacts_params)
    if @contact.save
      redirect_to new_contact_path
    else
      render 'new'
    end
  end
  
  private
  def contacts_params
    params.require(:contact).permit(:name, :email, :content)
  end
  
end
