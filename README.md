Synopsis

URL shortner application similar to bit.ly

Code Example

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

Motivation

A shortner to reduce the size of lengthy URL
