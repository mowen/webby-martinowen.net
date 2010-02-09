module PostsHelper

  BLOG_POST_LIMIT = 10
  HIDE_UNPUBLISHED = true

  def find_posts(limit=BLOG_POST_LIMIT)
    options = { :in_directory => 'blog', 
                :recursive => true,
                :sort_by => "created_at",
                :reverse => true,
                :blog_post => true }
    options[:draft] = nil if HIDE_UNPUBLISHED
    ::Webby::Resources.pages.find(limit, options)
  end

  def format_post_date_short(date)
    return date.strftime('%Y/%m/%d')
  end

  def format_post_date_long(date)
    day = format_day(date.day)
    return date.strftime("%A the #{day} of %B %Y")
  end

  private

    def format_day(day_of_month)
      day_suffix = ""

      if day_of_month == 1
        day_suffix = "st"
      elsif day_of_month == 2
        day_suffix = "nd"
      elsif day_of_month == 3
        day_suffix = "rd"
      else
        day_suffix = "th"
      end

      return day_of_month.to_s + day_suffix
    end

end

Webby::Helpers.register(PostsHelper)
