user = User.where(email: 'pete@simplybinary.com').first_or_create do |user|
  user.password = user.password_confirmation = 'password'
end
challenve = user.challenges.where(name: '100 Day Challenge').first_or_create
challenve = user.challenges.where(name: 'Whole 30').first_or_create
