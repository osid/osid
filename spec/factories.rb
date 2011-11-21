# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "nik"
  user.email                 "n.schild@gmx.ch"
  user.password              "password"
  user.password_confirmation "password"
  user.admin                  true
  user.active                 true
end
