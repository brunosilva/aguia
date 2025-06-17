class DashboardsController < ApplicationController

  def index
    @contacts = Contact.all
  end
end
