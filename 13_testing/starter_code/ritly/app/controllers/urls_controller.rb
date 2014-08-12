class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    
    Url.create_url(params_secure)


    # For the bonus
    # @url.hash_code = SecureRandom.urlsafe_base64(8)

    # Or create it in one shot by merging the random parameter into the safe params hash
    # @url = Url.create safe_url_params.merge(hash_code: SecureRandom.urlsafe_base64(8))
    redirect_to @url
  end

  def show
    @url = Url.find params[:id]
    @full_path = "#{request.protocol}#{request.host_with_port}/#{@url.hash_code}"
  end

  def redirector
    @url = Url.find_by hash_code: params[:code]
    if @url
      redirect_to @url.link
    else
      redirect_to root_path
    end
  end

  def preview
    @url = Url.find_by hash_code: params[:code]
    unless @url
      redirect_to root_path
    end
  end

private 
  def params_secure
  params.require(:url).permit(:link)
end

end
