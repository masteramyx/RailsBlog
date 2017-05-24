module ApplicationHelper

  #Helper Method for displaying current Date
  def friendly_date(d)
    d.strftime("%B %e, %Y")
  end
end
