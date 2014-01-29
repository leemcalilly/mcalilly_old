module ApplicationHelper
  
  def app_name
    "Lee McAlilly"
  end
  
  def random_featured_image
    ["all-stars", "bass", "fuzz-bag", "microphone", "music-man", "pedals", "plug-in", "tube-screamer"].sample
  end
  
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "#{app_name}"    
    if page_title.empty?
      base_title
    else
      "#{page_title} • #{base_title}"
    end
  end
  
end