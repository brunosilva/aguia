module Admin
  class ContactsController < ApplicationController
    before_action :set_contact, only: %i[ show edit update destroy ]

    # GET /contacts or /contacts.json
    def index
      @contacts = Contact.order(updated_at: :desc)
    end

    # GET /contacts/1 or /contacts/1.json
    def show
    end

    # GET /contacts/1/edit
    def edit
    end

    def reply
      @contact = Contact.find(params[:id])
      if @contact.update(replied: true)
        redirect_to admin_dashboard_path, notice: "Contato marcado como respondido."
      else
        redirect_to admin_dashboard_path, alert: "Não foi possível marcar como respondido."
      end
    end

    # PATCH/PUT /contacts/1 or /contacts/1.json
    def update
      respond_to do |format|
        if @contact.update(contact_params)
          format.html { redirect_to @contact, notice: "Contact was successfully updated." }
          format.json { render :show, status: :ok, location: @contact }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /contacts/1 or /contacts/1.json
    def destroy
      @contact.destroy!

      respond_to do |format|
        format.html { redirect_to contacts_path, status: :see_other, notice: "Contact was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.find(params[:id])
      end
  end
end
