class User < ApplicationRecord
  # This is literally scoping, but on the association's default instead!
  # So @user.posts would bring only the posts created 1 year ago or later.
  has_many :posts, -> { where('posts.created_at > ?', Time.current - 1.year) }
end

class User < ApplicationRecord
  # We can also pass parameters to the scope, so that we can have more
  # specific results. In this case, we would have only the posts
  # that contains the @user.name. Like, "who's talking about me?"
  has_many :posts, ->(user) { where('posts.content like ?', "%#{user.name}%") }
end

class User < ApplicationRecord
  # We can also create scopes in the parent model (User has_many Post)
  # so User is the parent model.
  has_many :posts
  scope :popular_posts, -> { joins(:posts).where('posts.likes > ?', 1000) }
end