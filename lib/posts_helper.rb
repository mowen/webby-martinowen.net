module PostsHelper

  BLOG_POST_LIMIT = 10
  HIDE_UNPUBLISHED = false

  def find_posts(limit=BLOG_POST_LIMIT)
    options = { :in_directory => 'blog', 
                :recursive => true,
                :sort_by => "created_at",
                :reverse => true,
                :blog_post => true }
    options[:published] = true if HIDE_UNPUBLISHED
    ::Webby::Resources.pages.find(limit, options)
  end

end

Webby::Helpers.register(PostsHelper)
