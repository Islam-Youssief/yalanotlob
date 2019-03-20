FactoryBot.define do 
	factory :user do |f|
  	  f.email Faker::Internet.free_email #=> "freddy@gmail.com"
  	  f.password "secret"
  end

  factory :authorize_user, :class => :user do
    # name "Tim Example"
    email "a_user@example.com"
    password '123456'
    activated true
    activated_at Time.zone.now
  end

end
