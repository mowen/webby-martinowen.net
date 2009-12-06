module PostsHelper

  def find_posts
    limit = 10
    options = { :in_directory => 'blog', 
                :recursive => true,
                :sort_by => "created_at",
                :reverse => true,
                :blog_post => true }
    ::Webby::Resources.pages.find(limit, options)
  end

end

Webby::Helpers.register(PostsHelper)
