module ApplicationHelper

  # Return a title on a per-page basis.
  def title_line
    base_title = "b.Nimble Software"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end

