Factory.define :user do |u|
  u.name "Mickey Mouse"
  u.login "mmouse"
  u.email "mmouse@disney.com"
  u.password, u.password_confirmation("password")
end
