module WelcomeHelper

  def landing?
    request.fullpath == "/"
  end

end
