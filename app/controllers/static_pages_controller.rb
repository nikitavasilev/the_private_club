class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def club
    @user = User.all
  end
end
