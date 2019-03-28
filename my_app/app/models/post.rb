class Post < ApplicationRecord
	validates :title, :content, presence: true
end


#### ANTES
# Post.create(title: "")
# Post.create!(title: "titulo")

# #### DURANTE
# post = Post.new(title: "")
# post.save!

# #### DESPUES
# post = Post.find(1)
# post.update(title: "")

# post = Post.find(2)
# post.valid? FALSE
# post.invalid? TRUE