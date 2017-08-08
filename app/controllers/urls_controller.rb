class UrlsController < ApplicationController
  def new
    @link = Url.new
    @links = Url.all
  end

  def create
    @link = Url.new(url_params)
      @link.shorturl = "#{rand(36**5).to_s(36)}"

    respond_to do |format|
      if @link.save
        format.html { redirect_to root_path, notice: 'Url was successfully created.' }

      else
        format.html { redirect_to root_path }
      end
    end
  end

   def show
    #  find the link
    @link = Url.find_by(shorturl: params[:id])
    # redirect to the long url
    redirect_to @link.url
   end

  def destroy
  end
  
  def index
    redirect_to root_path
  end
  private
  def url_params
      params.require(:url).permit(:url)
  end

end
