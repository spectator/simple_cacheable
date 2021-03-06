class User < ActiveRecord::Base
  include Cacheable

  has_many :posts

  model_cache do
    with_key
    with_attribute :login
    with_method :last_post
  end

  def last_post
    posts.last
  end
end
