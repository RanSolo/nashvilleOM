class StaticPagesController < ApplicationController
  layout 'static_application'
  def about
    @bio = ""
  end
  def privacy_policy
  end
end
