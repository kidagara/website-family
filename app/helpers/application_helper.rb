module ApplicationHelper
  def full_title(page_title = "")
    base_title = "Huntsman"
    if page_title.present?
      "Huntsman - #{page_title}"
    else
      "Huntsman"
    end
  end
end
