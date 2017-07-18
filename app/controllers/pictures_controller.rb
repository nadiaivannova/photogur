class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

 def new
   @picture = Picture.new
 end

 def create
   render text: "Received POST request to '/pictures' with the data URL: #{params.inspect}"
 end

 def show
  @picture = Picture.find(params[:id])
end

end
