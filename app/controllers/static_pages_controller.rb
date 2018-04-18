class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def pricing_page
  end
end
