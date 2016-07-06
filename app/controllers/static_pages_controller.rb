class StaticPagesController < ApplicationController
  layout 'static_application'
  def about
    @bio = "Millicent Boen graduated with a business degree from The University of Alabama, and her husband, Randy Boen studied music at the Musicians Institute in Hollywood, CA. After being a touring musician for 20 years, Randy took a break from the road and together they purchased a bar. Residents of South Nashville, they wanted to bring a unique experience to that side of town. A music venue and club where the atmosphere and relaxed vibe provides a gathering place for those who appreciate music in all its forms. Bringing rock, soul, funk, blues, jazz and even a little classic country to an area which has been starving for great entertainment for years, <%= t(:client) %> is a place where the very best in local entertainment gather just to see what is next. Come see what the buzz is all about!"
  end
  def privacy_policy
  end
end
