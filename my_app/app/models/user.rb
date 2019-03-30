class User < ApplicationRecord
	# validates :email, format: { width: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: 'only validate emails' }
	validates :phone, numericality: { greater_than: 5 }, presence: true, length: {minimum: 10}


	has_many :houses
	has_many :posts
	has_many :notes

	## Set Role
	  enum role: [:user, :broker, :admin]

	  before_create :set_default_user

	  def set_default_user
	    self.role = :user
	  end
end

# less_than
# leass_than_or_equal

### ANTES
User.create(title: "", role: "")
User.create!(title: "titulo")

#### DURANTE
User = User.new(title: "")
User.save!

#### DESPUES
user = User.find(1)
user.update(title: "")

# user = User.find(2)
# user.valid? FALSE
# user.invalid? TRUE