module Public
  class ContactsController < PublicController

    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(contact_params)

      respond_to do |format|
        if @contact.save
          flash.now[:notice] = "Contato salvo com sucesso!"
          format.html { render :new }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end
  end
end
