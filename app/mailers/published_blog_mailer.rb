class PublishedBlogMailer < ApplicationMailer
    default :from => 'prlinap@gmail.com'

  def published_blog_info(subscribed_users, blog)
    @blog = blog
    subscribed_users.each do |user|
      mail( to: user.email,
      subject: 'Post has been published' )
    end
  end
end
