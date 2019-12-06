class FilesController < ApplicationController
  def index
    # path_back = File.join("*")
    if params[:next].present?
      path = File.join(params[:next], "*")
      @files = Dir[path]
    else
      @files = Dir["*"]
    end
  end

  # def path_back
  #   if !params[:next].present?
  # #     path = File.join(params[:next], "*")
  #     @files = Dir[File.join("../")]
  #   end
  # #   end

  # end
end
