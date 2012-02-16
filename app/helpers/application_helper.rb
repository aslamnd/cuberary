module ApplicationHelper

  def anonymous?(&block)
    block.call unless current_user
  end

  def authenticated?(&block)
    block.call if current_user  
  end

  def year
    Time.now.year == 2012 ? "2012" : "2012 - #{Time.now.year}"
  end

  def copywrites
    "&copy; #{year}, #{ link_to 'Aslam Najeebdeen', 'http://aslamnajeebdeen.com' }".html_safe
  end

  def display_date(date)
    date.strftime("%d/%m/%Y") if date
  end

  def latest_course(course)
    month = course.released.month - Time.now.month 
    month < 4 && course.released.year == Time.now.year
  end

end
