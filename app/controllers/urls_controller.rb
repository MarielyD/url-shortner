class UrlsController < ApplicationController
  def new
    @url = Url.new
    @urls = Url.all
  end

  def create
    @url = Url.new(url_params)
      @url.shorturl = "#{rand(36**5).to_s(36)}"
    respond_to do |format|
      if @url.save
        format.html { redirect_to root_path, notice: 'Url was successfully created.' }

      else
        format.html { redirect_to root_path }
      end
    end
  end


    def destroy
  end



  private
  def url_params
      params.require(:url).permit(:url)
  end

end
