class MainsController < Public::PublicController
  before_action :fetch_about
  before_action :fetch_banner
  before_action :fetch_product
  before_action :fetch_logo
  before_action :fetch_basic

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

  def fetch_product
    @products = Product.all
  end

  def fetch_logo
    @logos = Logo.all
  end

  def fetch_basic
    @basics = Basic.all
  end
end
