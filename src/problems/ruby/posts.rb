# 1) What is the controller below trying to do?
#   2) What are the issues?
#   3) How would you fix them?

# Please follow good Object Oriented Programming principles
class PostsController < ApplicationController
  def index
    company = Company.find(params[:company_id])
    users = User.where(company_id: company.id)
    @posts = users.map(&:posts).flatten
    @posts = @posts.select{ |x|.moderated == true }.first(20)
  end
end

#   You can assume you have the following models:
class Company < ActiveRecord::Base
  has_many :users
end

class User < ActiveRecord::Base
  belongs_to :company
  has_many :posts
end

class Post < ActiveRecord::Base
  belongs_to :user
end
  # You are allowed to add or change any module or class you
  # desire

# Answer:
# 1) Potential SQL injection Company.find(params[:company_id])
# 2) N + 1: users.map(&:posts).flatten
# 3) Complexity

class Post < ActiveRecord::Base
  belongs_to :user

  scope :moderated, -> { moderated: true }
end

class PostsController < ApplicationController
  LIMIT_PER_PAGE = 20.freeze

  def index
    company = Company.find(params[:company_id].to_i)
    @posts = company.users.posts.moderated.limit(LIMIT_PER_PAGE)
  end
end