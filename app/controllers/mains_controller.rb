class MainsController < PublicController
  before_action :fetch_about
  before_action :fetch_banner

  def index
  end

  # GET /mains/1 or /mains/1.json
  def show
  end

  # GET /mains/new
  def new
  end

  private

  def fetch_about
    @abouts = About.all
  end

  def fetch_banner
    @banners = Banner.all
  end
end
