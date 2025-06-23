module Admin
  class DashboardsController < ApplicationController

    def index
      @contacts = Contact.all
    end

    def show

    end
  end
end
