class PublishedBlogMailer < ApplicationMailer
  
  default from: 'prlinap@gmail.com'

  def published_blog_info(subscribed_users, blog)
    @blog = blog
      mail( to: subscribed_users.map(&:email),
      subject: 'Post has been published' )
  end
end
