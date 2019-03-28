class User < ApplicationRecord
	# validates :email, format: { width: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: 'only validate emails' }
	validates :phone, numericality: { greater_than: 5 }, presence: true, length: {minimum: 10}
end

# less_than
# leass_than_or_equal

#### ANTES
# User.create(title: "")
# User.create!(title: "titulo")

# #### DURANTE
# User = User.new(title: "")
# User.save!

# #### DESPUES
# user = User.find(1)
# user.update(title: "")

# user = User.find(2)
# user.valid? FALSE
# user.invalid? TRUE