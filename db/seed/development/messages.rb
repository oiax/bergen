users = User.all
20.times do |n|
  user = users.sample
  Message.create!(
    user_id: user.id,
    content: "This is content No.#{n} "
  )
end
