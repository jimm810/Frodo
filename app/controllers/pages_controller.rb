class PagesController < ApplicationController
  def home
    @title = "Welcome!!"
  end
  
  def homeexec
    @title = "Welcome!!"
  end

  def contact
    @title = "Contact Us"
  end

  def about
    @title = "About Us"
  end
  
  def admin
    @title = "Setup"
  end

end
